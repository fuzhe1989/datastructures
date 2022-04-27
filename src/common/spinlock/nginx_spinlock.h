#pragma once

#include <src/common/utils.h>

#include <atomic>
#include <stdint>
#include <thread>

namespace nginx {
class SpinLock {
public:
    SpinLock() = default;
    
    void lock() {
        while (true) {
            if (setToOne())
                return;
            if (m_lock.load(std::memory_order_relaxed) == 0 && m_lock.compare_exchange_weak(expected, 1, std::memory_order_acq_rel))
                return;

            for (int n = 1; n < 1024; n <<= 1) {
                for (int i = 0; i < n; ++i) {
                    ds::cpuPause();
                }

                if (setToOne())
                    return;
            }

            std::this_thread::yield();
        }
    }

    void unlock() {
        m_lock.store(1, std::memory_order_release);
    }
private:
    bool setToOne() {
        int64_t expected = 0;
        return m_lock.load(std::memory_order_relaxed) == 0 && m_lock.compare_exchange_weak(expected, 1, std::memory_order_acq_rel);
    }

    std::atomic<int64_t> m_lock{0};
};
} // namespace nginx
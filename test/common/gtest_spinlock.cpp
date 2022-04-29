#include <gtest/gtest.h>
#include <src/common/spinlock/nginx_spinlock.h>

#include <thread>
#include <vector>

namespace tests {
namespace {

template <typename T>
class SpinLockTest : public ::testing::Test {
protected:
    using SpinLock = T;
};

using SpinLockTypes = ::testing::Types<nginx::SpinLock>;
TYPED_TEST_SUITE(SpinLockTest, SpinLockTypes);

TYPED_TEST(SpinLockTest, testLock) {
    SpinLock lk;
    int value = 0;

    auto f = [&] {
        for (int i = 0; i < 1000000; ++i) {
            lk.lock();
            value += 1;
            lk.unlock();
        }
    };

    std::vector<std::thread> threads;
    for (int i = 0; i < 10; ++i)
        threads.emplace_back(f);

    for (auto & t : threads)
        t.join();

    ASSERT_EQ(value, 10 * 1000000);
}

} // namespace
} // namespace tests
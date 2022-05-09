abstract class IRetryPolicy {
  int? nextRetryDelayInMilliseconds(RetryContext retryContext);
}

class RetryContext {
  int elapsedMilliseconds;
  int previousRetryCount;
  Exception? retryReason;

  RetryContext(
      [this.elapsedMilliseconds, this.previousRetryCount, this.retryReason]);
}

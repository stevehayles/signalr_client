abstract class IRetryPolicy {
  int? nextRetryDelayInMilliseconds(RetryContext retryContext);
}

class RetryContext {
  int elapsedMilliseconds;
  int previousRetryCount;
  Exception? retryReason;

  RetryContext([this.elapsedMilliseconds = 0, this.previousRetryCount = 0, this.retryReason]);
}

.class final enum Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policies$1;
.super Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policies;
.source "CycleDetectingLockFactory.java"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 205
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policies;-><init>(Ljava/lang/String;ILcom/google/common/util/concurrent/CycleDetectingLockFactory$1;)V

    return-void
.end method


# virtual methods
.method public final handlePotentialDeadlock(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$PotentialDeadlockException;)V
    .locals 0

    .prologue
    .line 208
    throw p1
.end method

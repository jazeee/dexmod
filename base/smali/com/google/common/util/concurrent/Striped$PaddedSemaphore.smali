.class Lcom/google/common/util/concurrent/Striped$PaddedSemaphore;
.super Ljava/util/concurrent/Semaphore;
.source "Striped.java"


# instance fields
.field q1:J

.field q2:J

.field q3:J


# direct methods
.method constructor <init>(I)V
    .locals 1

    .prologue
    .line 483
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/util/concurrent/Semaphore;-><init>(IZ)V

    .line 484
    return-void
.end method

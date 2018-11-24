.class public interface abstract Lcom/samsung/android/sdk/healthdata/HealthResultHolder;
.super Ljava/lang/Object;
.source "HealthResultHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract await()Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract cancel()V
.end method

.method public abstract setResultListener(Lcom/samsung/android/sdk/healthdata/aj;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/healthdata/aj",
            "<TT;>;)V"
        }
    .end annotation
.end method

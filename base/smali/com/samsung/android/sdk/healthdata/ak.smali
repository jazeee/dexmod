.class public interface abstract Lcom/samsung/android/sdk/healthdata/ak;
.super Ljava/lang/Object;
.source "IDataResolver.java"

# interfaces
.implements Landroid/os/IInterface;


# virtual methods
.method public abstract aggregateData(Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl;)Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;
.end method

.method public abstract aggregateData2(Ljava/lang/String;Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl;)V
.end method

.method public abstract deleteData(Lcom/samsung/android/sdk/internal/healthdata/DeleteRequestImpl;)Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;
.end method

.method public abstract deleteData2(Ljava/lang/String;Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;Lcom/samsung/android/sdk/internal/healthdata/DeleteRequestImpl;)V
.end method

.method public abstract insertData(Lcom/samsung/android/sdk/internal/healthdata/InsertRequestImpl;)Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;
.end method

.method public abstract insertData2(Ljava/lang/String;Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;Lcom/samsung/android/sdk/internal/healthdata/InsertRequestImpl;)V
.end method

.method public abstract readData(Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;)Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;
.end method

.method public abstract readData2(Ljava/lang/String;Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;)V
.end method

.method public abstract updateData(Lcom/samsung/android/sdk/internal/healthdata/UpdateRequestImpl;)Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;
.end method

.method public abstract updateData2(Ljava/lang/String;Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;Lcom/samsung/android/sdk/internal/healthdata/UpdateRequestImpl;)V
.end method

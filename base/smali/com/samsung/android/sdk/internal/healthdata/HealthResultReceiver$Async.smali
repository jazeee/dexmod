.class public Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Async;
.super Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;
.source "HealthResultReceiver.java"


# instance fields
.field private a:Lcom/samsung/android/sdk/internal/healthdata/x;

.field private b:Lcom/samsung/android/sdk/internal/healthdata/m;

.field private c:Lcom/samsung/android/sdk/internal/healthdata/p;

.field private final d:I

.field private final e:I

.field private f:Landroid/content/Intent;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 194
    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;-><init>(B)V

    .line 196
    iput v0, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Async;->d:I

    .line 197
    iput v0, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Async;->e:I

    .line 198
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 201
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;-><init>(Landroid/os/Parcel;B)V

    .line 203
    new-instance v0, Lcom/samsung/android/sdk/internal/healthdata/k;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/sdk/internal/healthdata/k;-><init>(Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Async;B)V

    iput-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Async;->c:Lcom/samsung/android/sdk/internal/healthdata/p;

    .line 204
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/internal/healthdata/n;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/sdk/internal/healthdata/m;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Async;->b:Lcom/samsung/android/sdk/internal/healthdata/m;

    .line 207
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 208
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Async;->d:I

    .line 209
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Async;->e:I

    .line 212
    iget v0, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Async;->e:I

    invoke-static {v0}, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;->a(I)Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    .line 214
    const-class v0, Landroid/content/Intent;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Async;->f:Landroid/content/Intent;

    .line 217
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Async;->b:Lcom/samsung/android/sdk/internal/healthdata/m;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Async;->c:Lcom/samsung/android/sdk/internal/healthdata/p;

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/sdk/internal/healthdata/m;->setCallback(ILcom/samsung/android/sdk/internal/healthdata/p;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;B)V
    .locals 0

    .prologue
    .line 181
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Async;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Async;Lcom/samsung/android/sdk/internal/healthdata/p;)Lcom/samsung/android/sdk/internal/healthdata/p;
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Async;->c:Lcom/samsung/android/sdk/internal/healthdata/p;

    return-object p1
.end method

.method private a(ILandroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 269
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Async;->a:Lcom/samsung/android/sdk/internal/healthdata/x;

    if-nez v0, :cond_0

    .line 298
    :goto_0
    return-void

    .line 273
    :cond_0
    const-class v0, Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionResult;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 274
    const-string v0, "type"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 275
    packed-switch v0, :pswitch_data_0

    .line 292
    const-string v0, "parcel"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;

    .line 293
    iget-object v1, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Async;->a:Lcom/samsung/android/sdk/internal/healthdata/x;

    invoke-interface {v1, p1, v0}, Lcom/samsung/android/sdk/internal/healthdata/x;->onReceiveHealthResult(ILcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;)V

    .line 297
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Async;->a:Lcom/samsung/android/sdk/internal/healthdata/x;

    goto :goto_0

    .line 277
    :pswitch_0
    const-string v0, "parcel"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadResult;

    .line 278
    iget-object v1, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Async;->a:Lcom/samsung/android/sdk/internal/healthdata/x;

    invoke-interface {v1, p1, v0}, Lcom/samsung/android/sdk/internal/healthdata/x;->onReceiveHealthResult(ILcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;)V

    goto :goto_1

    .line 281
    :pswitch_1
    const-string v0, "parcel"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateResult;

    .line 282
    iget-object v1, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Async;->a:Lcom/samsung/android/sdk/internal/healthdata/x;

    invoke-interface {v1, p1, v0}, Lcom/samsung/android/sdk/internal/healthdata/x;->onReceiveHealthResult(ILcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;)V

    goto :goto_1

    .line 285
    :pswitch_2
    const-string v0, "PERMISSION_RESULT_COUNT"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 286
    const-string v1, "PERMISSION_RESULT_COUNT"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 287
    const-string v1, "type"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 288
    new-instance v1, Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionResult;

    invoke-direct {v1, p2, v0}, Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionResult;-><init>(Landroid/os/Bundle;I)V

    .line 289
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Async;->a:Lcom/samsung/android/sdk/internal/healthdata/x;

    invoke-interface {v0, p1, v1}, Lcom/samsung/android/sdk/internal/healthdata/x;->onReceiveHealthResult(ILcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;)V

    goto :goto_1

    .line 275
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic a(Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Async;ILandroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 181
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Async;->a(ILandroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public cancel(I)V
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Async;->b:Lcom/samsung/android/sdk/internal/healthdata/m;

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Async;->b:Lcom/samsung/android/sdk/internal/healthdata/m;

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/internal/healthdata/m;->cancel(I)V

    .line 305
    :cond_0
    return-void
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Async;->f:Landroid/content/Intent;

    return-object v0
.end method

.method public isSync()Z
    .locals 1

    .prologue
    .line 243
    const/4 v0, 0x0

    return v0
.end method

.method protected onCancelResult(I)V
    .locals 0

    .prologue
    .line 311
    return-void
.end method

.method public registerListener(Lcom/samsung/android/sdk/internal/healthdata/x;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;",
            ">(",
            "Lcom/samsung/android/sdk/internal/healthdata/x",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 264
    iput-object p1, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Async;->a:Lcom/samsung/android/sdk/internal/healthdata/x;

    .line 265
    return-void
.end method

.method public send(ILandroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Async;->c:Lcom/samsung/android/sdk/internal/healthdata/p;

    if-eqz v0, :cond_0

    .line 250
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Async;->c:Lcom/samsung/android/sdk/internal/healthdata/p;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/sdk/internal/healthdata/p;->send(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Async;->c:Lcom/samsung/android/sdk/internal/healthdata/p;

    .line 260
    :goto_1
    return-void

    .line 258
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Async;->a(ILandroid/os/Bundle;)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 318
    iput-object p1, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Async;->f:Landroid/content/Intent;

    .line 319
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 224
    invoke-super {p0, p1, p2}, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;->writeToParcel(Landroid/os/Parcel;I)V

    .line 226
    monitor-enter p0

    .line 227
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Async;->b:Lcom/samsung/android/sdk/internal/healthdata/m;

    if-nez v0, :cond_0

    .line 228
    new-instance v0, Lcom/samsung/android/sdk/internal/healthdata/j;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/sdk/internal/healthdata/j;-><init>(Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Async;B)V

    iput-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Async;->b:Lcom/samsung/android/sdk/internal/healthdata/m;

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Async;->b:Lcom/samsung/android/sdk/internal/healthdata/m;

    invoke-interface {v0}, Lcom/samsung/android/sdk/internal/healthdata/m;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 231
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 235
    iget v0, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Async;->d:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 236
    iget v0, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Async;->e:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 238
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 239
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Async;->f:Landroid/content/Intent;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 240
    return-void

    .line 231
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

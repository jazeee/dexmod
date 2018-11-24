.class final Lcom/samsung/android/sdk/internal/healthdata/i;
.super Ljava/lang/Object;
.source "HealthResultReceiver.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 76
    .line 2078
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 2080
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 2082
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 2083
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2084
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2086
    packed-switch v1, :pswitch_data_0

    .line 2094
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid result parcel type : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2088
    :pswitch_0
    new-instance v0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Sync;

    invoke-direct {v0, p1, v2}, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Sync;-><init>(Landroid/os/Parcel;B)V

    .line 2092
    :goto_0
    return-object v0

    .line 2090
    :pswitch_1
    new-instance v0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Async;

    invoke-direct {v0, p1, v2}, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Async;-><init>(Landroid/os/Parcel;B)V

    goto :goto_0

    .line 2092
    :pswitch_2
    new-instance v0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$ForwardAsync;

    invoke-direct {v0, p1, v2}, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$ForwardAsync;-><init>(Landroid/os/Parcel;B)V

    goto :goto_0

    .line 2086
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 76
    .line 1099
    new-array v0, p1, [Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;

    .line 76
    return-object v0
.end method

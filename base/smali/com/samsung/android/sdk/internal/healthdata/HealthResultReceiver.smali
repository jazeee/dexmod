.class public abstract Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;
.super Ljava/lang/Object;
.source "HealthResultReceiver.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    new-instance v0, Lcom/samsung/android/sdk/internal/healthdata/i;

    invoke-direct {v0}, Lcom/samsung/android/sdk/internal/healthdata/i;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;->a:I

    .line 61
    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;->a:I

    .line 105
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;B)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method static synthetic a(I)Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 52
    .line 1111
    packed-switch p0, :pswitch_data_0

    .line 1119
    const-class v0, Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 1117
    :goto_0
    return-object v0

    .line 1113
    :pswitch_0
    const-class v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadResult;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_0

    .line 1115
    :pswitch_1
    const-class v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateResult;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_0

    .line 1117
    :pswitch_2
    const-class v0, Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionResult;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_0

    .line 1111
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static createSyncResult(IILandroid/os/Bundle;)Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;
    .locals 2

    .prologue
    .line 65
    new-instance v0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Sync;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Sync;-><init>(IILandroid/os/Bundle;B)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method public abstract isSync()Z
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    return-void
.end method

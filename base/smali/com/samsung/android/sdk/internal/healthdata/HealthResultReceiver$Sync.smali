.class public Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Sync;
.super Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;
.source "HealthResultReceiver.java"


# instance fields
.field private final a:I

.field private final b:I

.field private final c:Landroid/os/Bundle;


# direct methods
.method private constructor <init>(IILandroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;-><init>(B)V

    .line 134
    iput p1, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Sync;->a:I

    .line 135
    iput p2, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Sync;->b:I

    .line 136
    iput-object p3, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Sync;->c:Landroid/os/Bundle;

    .line 137
    return-void
.end method

.method synthetic constructor <init>(IILandroid/os/Bundle;B)V
    .locals 0

    .prologue
    .line 125
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Sync;-><init>(IILandroid/os/Bundle;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 140
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;-><init>(Landroid/os/Parcel;B)V

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Sync;->a:I

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Sync;->b:I

    .line 149
    iget v0, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Sync;->b:I

    invoke-static {v0}, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;->a(I)Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Sync;->c:Landroid/os/Bundle;

    .line 152
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;B)V
    .locals 0

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Sync;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public getBundle()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Sync;->c:Landroid/os/Bundle;

    return-object v0
.end method

.method public isSync()Z
    .locals 1

    .prologue
    .line 171
    const/4 v0, 0x1

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 155
    invoke-super {p0, p1, p2}, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;->writeToParcel(Landroid/os/Parcel;I)V

    .line 158
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 161
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 162
    iget v0, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Sync;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 163
    iget v0, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Sync;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 164
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Sync;->c:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 167
    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 168
    return-void
.end method

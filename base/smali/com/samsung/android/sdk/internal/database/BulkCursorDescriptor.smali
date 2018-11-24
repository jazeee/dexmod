.class public final Lcom/samsung/android/sdk/internal/database/BulkCursorDescriptor;
.super Ljava/lang/Object;
.source "BulkCursorDescriptor.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/sdk/internal/database/BulkCursorDescriptor;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public columnNames:[Ljava/lang/String;

.field public count:I

.field public cursor:Lcom/samsung/android/sdk/internal/database/d;

.field public wantsAllOnMoveCalls:Z

.field public window:Landroid/database/CursorWindow;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lcom/samsung/android/sdk/internal/database/a;

    invoke-direct {v0}, Lcom/samsung/android/sdk/internal/database/a;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/internal/database/BulkCursorDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method public final readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/internal/database/b;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/sdk/internal/database/d;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/internal/database/BulkCursorDescriptor;->cursor:Lcom/samsung/android/sdk/internal/database/d;

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/internal/database/BulkCursorDescriptor;->columnNames:[Ljava/lang/String;

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/sdk/internal/database/BulkCursorDescriptor;->wantsAllOnMoveCalls:Z

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/internal/database/BulkCursorDescriptor;->count:I

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    sget-object v0, Landroid/database/CursorWindow;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/CursorWindow;

    iput-object v0, p0, Lcom/samsung/android/sdk/internal/database/BulkCursorDescriptor;->window:Landroid/database/CursorWindow;

    .line 78
    :cond_0
    return-void

    .line 73
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 58
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/database/BulkCursorDescriptor;->cursor:Lcom/samsung/android/sdk/internal/database/d;

    invoke-interface {v0}, Lcom/samsung/android/sdk/internal/database/d;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 59
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/database/BulkCursorDescriptor;->columnNames:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 60
    iget-boolean v0, p0, Lcom/samsung/android/sdk/internal/database/BulkCursorDescriptor;->wantsAllOnMoveCalls:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    iget v0, p0, Lcom/samsung/android/sdk/internal/database/BulkCursorDescriptor;->count:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/database/BulkCursorDescriptor;->window:Landroid/database/CursorWindow;

    if-eqz v0, :cond_1

    .line 63
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/database/BulkCursorDescriptor;->window:Landroid/database/CursorWindow;

    invoke-virtual {v0, p1, p2}, Landroid/database/CursorWindow;->writeToParcel(Landroid/os/Parcel;I)V

    .line 68
    :goto_1
    return-void

    :cond_0
    move v0, v2

    .line 60
    goto :goto_0

    .line 66
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1
.end method

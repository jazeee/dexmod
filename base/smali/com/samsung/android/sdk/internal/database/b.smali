.class public abstract Lcom/samsung/android/sdk/internal/database/b;
.super Landroid/os/Binder;
.source "BulkCursorNative.java"

# interfaces
.implements Lcom/samsung/android/sdk/internal/database/d;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 38
    const-string v0, "android.content.IBulkCursor"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/sdk/internal/database/b;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/sdk/internal/database/d;
    .locals 1

    .prologue
    .line 47
    if-nez p0, :cond_1

    .line 48
    const/4 v0, 0x0

    .line 55
    :cond_0
    :goto_0
    return-object v0

    .line 50
    :cond_1
    const-string v0, "android.content.IBulkCursor"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/internal/database/d;

    .line 51
    if-nez v0, :cond_0

    .line 55
    new-instance v0, Lcom/samsung/android/sdk/internal/database/e;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/internal/database/e;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 136
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 62
    packed-switch p1, :pswitch_data_0

    .line 126
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 130
    :goto_0
    return v0

    .line 64
    :pswitch_0
    const-string v1, "android.content.IBulkCursor"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 66
    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/internal/database/b;->getWindow(I)Landroid/database/CursorWindow;

    move-result-object v1

    .line 67
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    if-nez v1, :cond_0

    .line 69
    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 128
    :catch_0
    move-exception v1

    .line 129
    invoke-static {p3, v1}, Landroid/database/DatabaseUtils;->writeExceptionToParcel(Landroid/os/Parcel;Ljava/lang/Exception;)V

    goto :goto_0

    .line 71
    :cond_0
    const/4 v2, 0x1

    :try_start_1
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 72
    const/4 v2, 0x1

    invoke-virtual {v1, p3, v2}, Landroid/database/CursorWindow;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 78
    :pswitch_1
    const-string v1, "android.content.IBulkCursor"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0}, Lcom/samsung/android/sdk/internal/database/b;->deactivate()V

    .line 80
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 85
    :pswitch_2
    const-string v1, "android.content.IBulkCursor"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0}, Lcom/samsung/android/sdk/internal/database/b;->close()V

    .line 87
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 92
    :pswitch_3
    const-string v1, "android.content.IBulkCursor"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0}, Lcom/samsung/android/sdk/internal/database/b;->requery()I

    move-result v1

    .line 94
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    invoke-virtual {p0}, Lcom/samsung/android/sdk/internal/database/b;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    goto :goto_0

    .line 101
    :pswitch_4
    const-string v1, "android.content.IBulkCursor"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 103
    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/internal/database/b;->onMove(I)V

    .line 104
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 109
    :pswitch_5
    const-string v1, "android.content.IBulkCursor"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p0}, Lcom/samsung/android/sdk/internal/database/b;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 111
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 112
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    goto :goto_0

    .line 117
    :pswitch_6
    const-string v1, "android.content.IBulkCursor"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 119
    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/internal/database/b;->respond(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 120
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 62
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_2
    .end packed-switch
.end method

.class public Lcom/dexcom/cgm/activities/ImageOrientationUtil;
.super Ljava/lang/Object;
.source "ImageOrientationUtil.java"


# static fields
.field private static final SCHEME_CONTENT:Ljava/lang/String; = "content"

.field private static final SCHEME_FILE:Ljava/lang/String; = "file"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeSilently(Ljava/io/Closeable;)V
    .locals 1
    .param p0    # Ljava/io/Closeable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 33
    if-nez p0, :cond_0

    .line 39
    :goto_0
    return-void

    .line 35
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 39
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static getExifRotation(Ljava/io/File;)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 42
    if-nez p0, :cond_0

    .line 58
    :goto_0
    return v0

    .line 44
    :cond_0
    :try_start_0
    new-instance v1, Landroid/media/ExifInterface;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 46
    const-string v2, "Orientation"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 50
    :pswitch_1
    const/16 v0, 0xb4

    goto :goto_0

    .line 48
    :pswitch_2
    const/16 v0, 0x5a

    goto :goto_0

    .line 52
    :pswitch_3
    const/16 v0, 0x10e

    goto :goto_0

    .line 58
    :catch_0
    move-exception v1

    goto :goto_0

    .line 46
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static getFromMediaUri(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/File;
    .locals 7
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 64
    if-nez p2, :cond_1

    move-object v0, v6

    .line 94
    :cond_0
    :goto_0
    return-object v0

    .line 66
    :cond_1
    const-string v0, "file"

    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 67
    new-instance v0, Ljava/io/File;

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 68
    :cond_2
    const-string v0, "content"

    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 69
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "_display_name"

    aput-object v1, v2, v0

    .line 72
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p2

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 73
    if-eqz v1, :cond_4

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 74
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "content://com.google.android.gallery3d"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "_display_name"

    .line 75
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 78
    :goto_1
    const/4 v2, -0x1

    if-eq v0, v2, :cond_4

    .line 79
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 80
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 81
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 91
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 75
    :cond_3
    :try_start_2
    const-string v0, "_data"

    .line 76
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v0

    goto :goto_1

    .line 91
    :cond_4
    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    :goto_2
    move-object v0, v6

    .line 94
    goto :goto_0

    .line 87
    :catch_0
    move-exception v0

    :goto_3
    :try_start_3
    invoke-static {p0, p1, p2}, Lcom/dexcom/cgm/activities/ImageOrientationUtil;->getFromMediaUriPfd(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/File;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result-object v0

    .line 91
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    move-object v1, v6

    :goto_4
    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_5
    if-eqz v1, :cond_6

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object v1, v6

    goto :goto_5

    :catch_2
    move-exception v0

    goto :goto_4

    .line 87
    :catch_3
    move-exception v0

    move-object v6, v1

    goto :goto_3
.end method

.method private static getFromMediaUriPfd(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/File;
    .locals 7
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 105
    if-nez p2, :cond_0

    .line 132
    :goto_0
    return-object v0

    .line 110
    :cond_0
    :try_start_0
    const-string v1, "r"

    invoke-virtual {p1, p2, v1}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 111
    if-nez v1, :cond_1

    .line 129
    invoke-static {v0}, Lcom/dexcom/cgm/activities/ImageOrientationUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 130
    invoke-static {v0}, Lcom/dexcom/cgm/activities/ImageOrientationUtil;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .line 114
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 115
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 117
    :try_start_2
    invoke-static {p0}, Lcom/dexcom/cgm/activities/ImageOrientationUtil;->getTempFilename(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 118
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 121
    const/16 v1, 0x1000

    :try_start_3
    new-array v1, v1, [B

    .line 122
    :goto_1
    invoke-virtual {v3, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    .line 123
    const/4 v6, 0x0

    invoke-virtual {v2, v1, v6, v5}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_1

    .line 129
    :catch_0
    move-exception v1

    move-object v1, v2

    move-object v2, v3

    :goto_2
    invoke-static {v2}, Lcom/dexcom/cgm/activities/ImageOrientationUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 130
    invoke-static {v1}, Lcom/dexcom/cgm/activities/ImageOrientationUtil;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .line 125
    :cond_2
    :try_start_4
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 129
    invoke-static {v3}, Lcom/dexcom/cgm/activities/ImageOrientationUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 130
    invoke-static {v2}, Lcom/dexcom/cgm/activities/ImageOrientationUtil;->closeSilently(Ljava/io/Closeable;)V

    move-object v0, v1

    goto :goto_0

    .line 129
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v0, v1

    :goto_3
    invoke-static {v3}, Lcom/dexcom/cgm/activities/ImageOrientationUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 130
    invoke-static {v2}, Lcom/dexcom/cgm/activities/ImageOrientationUtil;->closeSilently(Ljava/io/Closeable;)V

    throw v0

    .line 129
    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_3

    :catchall_2
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v1

    move-object v1, v0

    move-object v2, v0

    goto :goto_2

    :catch_2
    move-exception v1

    move-object v1, v0

    move-object v2, v3

    goto :goto_2
.end method

.method private static getTempFilename(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 98
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 99
    const-string v1, "image"

    const-string v2, "tmp"

    invoke-static {v1, v2, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 100
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

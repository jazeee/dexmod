.class public Lcom/soundcloud/android/crop/a;
.super Ljava/lang/Object;
.source "Crop.java"


# static fields
.field public static final REQUEST_CROP:I = 0x1a35

.field public static final REQUEST_PICK:I = 0x23ca

.field public static final RESULT_ERROR:I = 0x194


# instance fields
.field private cropIntent:Landroid/content/Intent;


# direct methods
.method private constructor <init>(Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 2

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/soundcloud/android/crop/a;->cropIntent:Landroid/content/Intent;

    .line 44
    iget-object v0, p0, Lcom/soundcloud/android/crop/a;->cropIntent:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 45
    iget-object v0, p0, Lcom/soundcloud/android/crop/a;->cropIntent:Landroid/content/Intent;

    const-string v1, "output"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 46
    return-void
.end method

.method public static closeSilently(Ljava/io/Closeable;)V
    .locals 1

    .prologue
    .line 1032
    if-nez p0, :cond_0

    .line 1038
    :goto_0
    return-void

    .line 1034
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1038
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static copyExifRotation(Ljava/io/File;Ljava/io/File;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 1062
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 1071
    :cond_0
    :goto_0
    return v0

    .line 1064
    :cond_1
    :try_start_0
    new-instance v1, Landroid/media/ExifInterface;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 1065
    new-instance v2, Landroid/media/ExifInterface;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 1066
    const-string v3, "Orientation"

    const-string v4, "Orientation"

    invoke-virtual {v1, v4}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1067
    invoke-virtual {v2}, Landroid/media/ExifInterface;->saveAttributes()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1068
    const/4 v0, 0x1

    goto :goto_0

    .line 1069
    :catch_0
    move-exception v1

    .line 1070
    const-string v2, "Error copying Exif data"

    invoke-static {v2, v1}, Lcom/soundcloud/android/crop/a;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 3013
    const-string v0, "android-crop"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3014
    return-void
.end method

.method public static getError(Landroid/content/Intent;)Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 169
    const-string v0, "error"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    return-object v0
.end method

.method public static getExifRotation(Ljava/io/File;)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1041
    if-nez p0, :cond_0

    .line 1057
    :goto_0
    return v0

    .line 1043
    :cond_0
    :try_start_0
    new-instance v1, Landroid/media/ExifInterface;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 1045
    const-string v2, "Orientation"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1049
    :pswitch_1
    const/16 v0, 0xb4

    goto :goto_0

    .line 1047
    :pswitch_2
    const/16 v0, 0x5a

    goto :goto_0

    .line 1051
    :pswitch_3
    const/16 v0, 0x10e

    goto :goto_0

    .line 1055
    :catch_0
    move-exception v1

    .line 1056
    const-string v2, "Error getting Exif data"

    invoke-static {v2, v1}, Lcom/soundcloud/android/crop/a;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1045
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

    .line 1077
    if-nez p2, :cond_1

    move-object v0, v6

    .line 1107
    :cond_0
    :goto_0
    return-object v0

    .line 1079
    :cond_1
    const-string v0, "file"

    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1080
    new-instance v0, Ljava/io/File;

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 1081
    :cond_2
    const-string v0, "content"

    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1082
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "_display_name"

    aput-object v1, v2, v0

    .line 1085
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

    .line 1086
    if-eqz v1, :cond_4

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1087
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "content://com.google.android.gallery3d"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "_display_name"

    .line 1088
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 1091
    :goto_1
    const/4 v2, -0x1

    if-eq v0, v2, :cond_4

    .line 1092
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1093
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1094
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1104
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1088
    :cond_3
    :try_start_2
    const-string v0, "_data"

    .line 1089
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v0

    goto :goto_1

    .line 1104
    :cond_4
    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    :goto_2
    move-object v0, v6

    .line 1107
    goto :goto_0

    .line 1100
    :catch_0
    move-exception v0

    :goto_3
    :try_start_3
    invoke-static {p0, p1, p2}, Lcom/soundcloud/android/crop/a;->getFromMediaUriPfd(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/File;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result-object v0

    .line 1104
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

    .line 1100
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

    .line 1118
    if-nez p2, :cond_0

    .line 1145
    :goto_0
    return-object v0

    .line 1123
    :cond_0
    :try_start_0
    const-string v1, "r"

    invoke-virtual {p1, p2, v1}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1124
    if-nez v1, :cond_1

    .line 1142
    invoke-static {v0}, Lcom/soundcloud/android/crop/a;->closeSilently(Ljava/io/Closeable;)V

    .line 1143
    invoke-static {v0}, Lcom/soundcloud/android/crop/a;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .line 1127
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 1128
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2111
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    .line 2112
    const-string v2, "image"

    const-string v4, "tmp"

    invoke-static {v2, v4, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 2113
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 1131
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1134
    const/16 v1, 0x1000

    :try_start_3
    new-array v1, v1, [B

    .line 1135
    :goto_1
    invoke-virtual {v3, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    .line 1136
    const/4 v6, 0x0

    invoke-virtual {v2, v1, v6, v5}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_1

    .line 1142
    :catch_0
    move-exception v1

    move-object v1, v2

    move-object v2, v3

    :goto_2
    invoke-static {v2}, Lcom/soundcloud/android/crop/a;->closeSilently(Ljava/io/Closeable;)V

    .line 1143
    invoke-static {v1}, Lcom/soundcloud/android/crop/a;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .line 1138
    :cond_2
    :try_start_4
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1142
    invoke-static {v3}, Lcom/soundcloud/android/crop/a;->closeSilently(Ljava/io/Closeable;)V

    .line 1143
    invoke-static {v2}, Lcom/soundcloud/android/crop/a;->closeSilently(Ljava/io/Closeable;)V

    move-object v0, v1

    goto :goto_0

    .line 1142
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v0, v1

    :goto_3
    invoke-static {v3}, Lcom/soundcloud/android/crop/a;->closeSilently(Ljava/io/Closeable;)V

    .line 1143
    invoke-static {v2}, Lcom/soundcloud/android/crop/a;->closeSilently(Ljava/io/Closeable;)V

    throw v0

    .line 1142
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

.method public static getOutput(Landroid/content/Intent;)Landroid/net/Uri;
    .locals 1

    .prologue
    .line 159
    const-string v0, "output"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    return-object v0
.end method

.method private static getTempFilename(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 1111
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 1112
    const-string v1, "image"

    const-string v2, "tmp"

    invoke-static {v1, v2, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 1113
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static of(Landroid/net/Uri;Landroid/net/Uri;)Lcom/soundcloud/android/crop/a;
    .locals 1

    .prologue
    .line 39
    new-instance v0, Lcom/soundcloud/android/crop/a;

    invoke-direct {v0, p0, p1}, Lcom/soundcloud/android/crop/a;-><init>(Landroid/net/Uri;Landroid/net/Uri;)V

    return-object v0
.end method

.method public static pickImage(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 178
    const/16 v0, 0x23ca

    invoke-static {p0, v0}, Lcom/soundcloud/android/crop/a;->pickImage(Landroid/app/Activity;I)V

    .line 179
    return-void
.end method

.method public static pickImage(Landroid/app/Activity;I)V
    .locals 2

    .prologue
    .line 188
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 190
    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    :goto_0
    return-void

    .line 192
    :catch_0
    move-exception v0

    sget v0, Lcom/dexcom/cgm/tx/mediator/h;->crop__pick_error:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public static startBackgroundJob(Lcom/soundcloud/android/crop/s;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Landroid/os/Handler;)V
    .locals 3

    .prologue
    .line 2152
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    .line 2154
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/soundcloud/android/crop/k;

    invoke-direct {v2, p0, p3, v0, p4}, Lcom/soundcloud/android/crop/k;-><init>(Lcom/soundcloud/android/crop/s;Ljava/lang/Runnable;Landroid/app/ProgressDialog;Landroid/os/Handler;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 2155
    return-void
.end method


# virtual methods
.method public final asSquare()Lcom/soundcloud/android/crop/a;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 64
    iget-object v0, p0, Lcom/soundcloud/android/crop/a;->cropIntent:Landroid/content/Intent;

    const-string v1, "aspect_x"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 65
    iget-object v0, p0, Lcom/soundcloud/android/crop/a;->cropIntent:Landroid/content/Intent;

    const-string v1, "aspect_y"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 66
    return-object p0
.end method

.method public final getIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/soundcloud/android/crop/a;->cropIntent:Landroid/content/Intent;

    const-class v1, Lcom/soundcloud/android/crop/CropImageActivity;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 150
    iget-object v0, p0, Lcom/soundcloud/android/crop/a;->cropIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public final start(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 87
    const/16 v0, 0x1a35

    invoke-virtual {p0, p1, v0}, Lcom/soundcloud/android/crop/a;->start(Landroid/app/Activity;I)V

    .line 88
    return-void
.end method

.method public final start(Landroid/app/Activity;I)V
    .locals 1

    .prologue
    .line 97
    invoke-virtual {p0, p1}, Lcom/soundcloud/android/crop/a;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 98
    return-void
.end method

.method public final start(Landroid/content/Context;Landroid/app/Fragment;)V
    .locals 1

    .prologue
    .line 107
    const/16 v0, 0x1a35

    invoke-virtual {p0, p1, p2, v0}, Lcom/soundcloud/android/crop/a;->start(Landroid/content/Context;Landroid/app/Fragment;I)V

    .line 108
    return-void
.end method

.method public final start(Landroid/content/Context;Landroid/app/Fragment;I)V
    .locals 1

    .prologue
    .line 128
    invoke-virtual {p0, p1}, Lcom/soundcloud/android/crop/a;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p2, v0, p3}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 129
    return-void
.end method

.method public final start(Landroid/content/Context;Landroid/support/v4/app/Fragment;)V
    .locals 1

    .prologue
    .line 117
    const/16 v0, 0x1a35

    invoke-virtual {p0, p1, p2, v0}, Lcom/soundcloud/android/crop/a;->start(Landroid/content/Context;Landroid/support/v4/app/Fragment;I)V

    .line 118
    return-void
.end method

.method public final start(Landroid/content/Context;Landroid/support/v4/app/Fragment;I)V
    .locals 1

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Lcom/soundcloud/android/crop/a;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p2, v0, p3}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 140
    return-void
.end method

.method public final withAspect(II)Lcom/soundcloud/android/crop/a;
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/soundcloud/android/crop/a;->cropIntent:Landroid/content/Intent;

    const-string v1, "aspect_x"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 56
    iget-object v0, p0, Lcom/soundcloud/android/crop/a;->cropIntent:Landroid/content/Intent;

    const-string v1, "aspect_y"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 57
    return-object p0
.end method

.method public final withMaxSize(II)Lcom/soundcloud/android/crop/a;
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/soundcloud/android/crop/a;->cropIntent:Landroid/content/Intent;

    const-string v1, "max_x"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 77
    iget-object v0, p0, Lcom/soundcloud/android/crop/a;->cropIntent:Landroid/content/Intent;

    const-string v1, "max_y"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 78
    return-object p0
.end method

.class public final Lcom/dexcom/b/a;
.super Ljava/lang/Object;
.source "DatabaseKeyManager.java"


# static fields
.field private static final KEY_FILE:Ljava/lang/String; = "database.key"

.field private static final KEY_WRAPPER_ALIAS:Ljava/lang/String; = "database"

.field private static final SK_FILE:Ljava/lang/String; = "db.sk"

.field private static applicationContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput-object v0, Lcom/dexcom/b/a;->applicationContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createNewDatabaseKey()V
    .locals 4

    .prologue
    .line 46
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 48
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const-string v2, "AES"

    invoke-direct {v1, v0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 52
    :try_start_0
    new-instance v0, Lcom/dexcom/b/b;

    sget-object v2, Lcom/dexcom/b/a;->applicationContext:Landroid/content/Context;

    const-string v3, "database"

    invoke-direct {v0, v2, v3}, Lcom/dexcom/b/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/dexcom/b/b;->a(Ljavax/crypto/SecretKey;)[B

    move-result-object v0

    .line 53
    invoke-static {}, Lcom/dexcom/b/a;->getKeyFile()Ljava/io/File;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/dexcom/cgm/d/e;->writeFully(Ljava/io/File;[B)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 72
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .line 60
    :try_start_1
    new-instance v0, Lcom/dexcom/b/c;

    invoke-direct {v0}, Lcom/dexcom/b/c;-><init>()V

    invoke-virtual {v0, v1}, Lcom/dexcom/b/c;->a(Ljavax/crypto/SecretKey;)[B

    move-result-object v0

    .line 61
    invoke-static {}, Lcom/dexcom/b/a;->getSKFile()Ljava/io/File;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/dexcom/cgm/d/e;->writeFully(Ljava/io/File;[B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 63
    :catch_1
    move-exception v0

    .line 65
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Could not create database"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 68
    :catch_2
    move-exception v0

    .line 70
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Could not create database"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getDatabaseKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 33
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/dexcom/b/a;->applicationContext:Landroid/content/Context;

    .line 34
    invoke-static {}, Lcom/dexcom/b/a;->getKeyFile()Ljava/io/File;

    move-result-object v0

    .line 35
    invoke-static {}, Lcom/dexcom/b/a;->getSKFile()Ljava/io/File;

    move-result-object v1

    .line 36
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 38
    invoke-static {}, Lcom/dexcom/b/a;->createNewDatabaseKey()V

    .line 41
    :cond_0
    invoke-static {}, Lcom/dexcom/b/a;->readDatabaseKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getKeyFile()Ljava/io/File;
    .locals 3

    .prologue
    .line 122
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/dexcom/b/a;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "database.key"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private static getSKFile()Ljava/io/File;
    .locals 3

    .prologue
    .line 127
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/dexcom/b/a;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "db.sk"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private static readDatabaseKey()Ljava/lang/String;
    .locals 4

    .prologue
    .line 77
    invoke-static {}, Lcom/dexcom/b/a;->getKeyFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    :try_start_0
    invoke-static {}, Lcom/dexcom/b/a;->getKeyFile()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/dexcom/cgm/d/e;->readFully(Ljava/io/File;)[B

    move-result-object v1

    .line 82
    new-instance v2, Lcom/dexcom/b/b;

    sget-object v0, Lcom/dexcom/b/a;->applicationContext:Landroid/content/Context;

    const-string v3, "database"

    invoke-direct {v2, v0, v3}, Lcom/dexcom/b/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 85
    :try_start_1
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/dexcom/b/b;->a([B)Ljavax/crypto/SecretKey;

    move-result-object v1

    invoke-interface {v1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 106
    :goto_0
    return-object v0

    .line 87
    :catch_0
    move-exception v0

    .line 89
    :try_start_2
    new-instance v1, Ljava/security/GeneralSecurityException;

    const-string v2, "Failed to read database using key."

    invoke-direct {v1, v2, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 92
    :catch_1
    move-exception v0

    .line 94
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Could not read database"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 102
    :cond_0
    :try_start_3
    invoke-static {}, Lcom/dexcom/b/a;->getSKFile()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/dexcom/cgm/d/e;->readFully(Ljava/io/File;)[B

    move-result-object v1

    .line 103
    new-instance v2, Lcom/dexcom/b/c;

    invoke-direct {v2}, Lcom/dexcom/b/c;-><init>()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 106
    :try_start_4
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/dexcom/b/c;->a([B)Ljavax/crypto/SecretKey;

    move-result-object v1

    invoke-interface {v1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_0

    .line 108
    :catch_2
    move-exception v0

    .line 110
    :try_start_5
    new-instance v1, Ljava/security/GeneralSecurityException;

    const-string v2, "Failed to read database using key."

    invoke-direct {v1, v2, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 113
    :catch_3
    move-exception v0

    .line 115
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Could not read database"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

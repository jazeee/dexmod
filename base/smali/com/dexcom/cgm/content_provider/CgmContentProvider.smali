.class public Lcom/dexcom/cgm/content_provider/CgmContentProvider;
.super Landroid/content/ContentProvider;
.source "CgmContentProvider.java"


# static fields
.field static final KEY_VALUE:I = 0x2

.field static final KEY_VALUES:I = 0x1

.field static final PASSWORD_KEY:Ljava/lang/String; = "Password"

.field static final PASSWORD_VALUE:I = 0x4

.field static final TAG:Ljava/lang/String;

.field static final USERNAME_KEY:Ljava/lang/String; = "Username"

.field static final USERNAME_VALUE:I = 0x3

.field static final USER_DISPLAY_NAME_KEY:Ljava/lang/String; = "UserDisplayName"

.field static final USER_DISPLAY_NAME_VALUE:I = 0x5

.field static final uriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private m_database:Lcom/dexcom/platform_database/database/CgmDatabaseComponent;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 25
    const-class v0, Lcom/dexcom/cgm/content_provider/CgmContentProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dexcom/cgm/content_provider/CgmContentProvider;->TAG:Ljava/lang/String;

    .line 41
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    .line 42
    sput-object v0, Lcom/dexcom/cgm/content_provider/CgmContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.dexcom.cgm.content_provider"

    const-string v2, "key_value"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 43
    sget-object v0, Lcom/dexcom/cgm/content_provider/CgmContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.dexcom.cgm.content_provider"

    const-string v2, "key_value/#"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 44
    sget-object v0, Lcom/dexcom/cgm/content_provider/CgmContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.dexcom.cgm.content_provider"

    const-string v2, "username_value"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 45
    sget-object v0, Lcom/dexcom/cgm/content_provider/CgmContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.dexcom.cgm.content_provider"

    const-string v2, "password_value"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 46
    sget-object v0, Lcom/dexcom/cgm/content_provider/CgmContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.dexcom.cgm.content_provider"

    const-string v2, "user_display_name_value"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 47
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 53
    return-void
.end method

.method private getDatabaseComponent()Lcom/dexcom/platform_database/database/CgmDatabaseComponent;
    .locals 3

    .prologue
    .line 57
    iget-object v0, p0, Lcom/dexcom/cgm/content_provider/CgmContentProvider;->m_database:Lcom/dexcom/platform_database/database/CgmDatabaseComponent;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;

    invoke-virtual {p0}, Lcom/dexcom/cgm/content_provider/CgmContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/dexcom/cgm/content_provider/CgmContentProvider;->m_database:Lcom/dexcom/platform_database/database/CgmDatabaseComponent;

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/dexcom/cgm/content_provider/CgmContentProvider;->m_database:Lcom/dexcom/platform_database/database/CgmDatabaseComponent;

    return-object v0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 66
    sget-object v0, Lcom/dexcom/cgm/content_provider/CgmContentProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unexpected call to delete() with uri:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dexcom/cgm/f/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 73
    sget-object v0, Lcom/dexcom/cgm/content_provider/CgmContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 91
    sget-object v0, Lcom/dexcom/cgm/content_provider/CgmContentProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported URI type requested:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dexcom/cgm/f/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 76
    :pswitch_0
    sget-object v0, Lcom/dexcom/cgm/c/b;->CONTENT_TYPE:Ljava/lang/String;

    goto :goto_0

    .line 79
    :pswitch_1
    sget-object v0, Lcom/dexcom/cgm/c/b;->CONTENT_ITEM_TYPE:Ljava/lang/String;

    goto :goto_0

    .line 82
    :pswitch_2
    sget-object v0, Lcom/dexcom/cgm/c/b;->CONTENT_ITEM_TYPE:Ljava/lang/String;

    goto :goto_0

    .line 85
    :pswitch_3
    sget-object v0, Lcom/dexcom/cgm/c/b;->CONTENT_ITEM_TYPE:Ljava/lang/String;

    goto :goto_0

    .line 88
    :pswitch_4
    sget-object v0, Lcom/dexcom/cgm/c/b;->CONTENT_ITEM_TYPE:Ljava/lang/String;

    goto :goto_0

    .line 73
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 3

    .prologue
    .line 99
    sget-object v0, Lcom/dexcom/cgm/content_provider/CgmContentProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected call to insert() with uri:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dexcom/cgm/f/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 125
    new-instance v0, Lnet/sqlcipher/database/SQLiteQueryBuilder;

    invoke-direct {v0}, Lnet/sqlcipher/database/SQLiteQueryBuilder;-><init>()V

    .line 126
    const-string v1, "keyValuePair"

    invoke-virtual {v0, v1}, Lnet/sqlcipher/database/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 128
    sget-object v1, Lcom/dexcom/cgm/content_provider/CgmContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 155
    sget-object v0, Lcom/dexcom/cgm/content_provider/CgmContentProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported URI requested:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dexcom/cgm/f/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v8

    .line 173
    :goto_0
    return-object v0

    :pswitch_0
    move-object v4, p4

    move-object v3, p3

    move-object v2, p2

    .line 158
    :goto_1
    if-eqz p5, :cond_0

    const-string v1, ""

    if-ne p5, v1, :cond_1

    .line 162
    :cond_0
    const-string v7, "key"

    .line 166
    :goto_2
    :try_start_0
    invoke-direct {p0}, Lcom/dexcom/cgm/content_provider/CgmContentProvider;->getDatabaseComponent()Lcom/dexcom/platform_database/database/CgmDatabaseComponent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->getDatabase()Lnet/sqlcipher/database/SQLiteDatabase;

    move-result-object v1

    .line 167
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v7}, Lnet/sqlcipher/database/SQLiteQueryBuilder;->query(Lnet/sqlcipher/database/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/sqlcipher/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 137
    :pswitch_1
    const-string v3, "key= ?"

    .line 138
    new-array v4, v2, [Ljava/lang/String;

    const-string v1, "Username"

    aput-object v1, v4, v5

    .line 139
    new-array v2, v2, [Ljava/lang/String;

    const-string v1, "value"

    aput-object v1, v2, v5

    goto :goto_1

    .line 143
    :pswitch_2
    const-string v3, "key= ?"

    .line 144
    new-array v4, v2, [Ljava/lang/String;

    const-string v1, "Password"

    aput-object v1, v4, v5

    .line 145
    new-array v2, v2, [Ljava/lang/String;

    const-string v1, "value"

    aput-object v1, v2, v5

    goto :goto_1

    .line 149
    :pswitch_3
    const-string v3, "key= ?"

    .line 150
    new-array v4, v2, [Ljava/lang/String;

    const-string v1, "UserDisplayName"

    aput-object v1, v4, v5

    .line 151
    new-array v2, v2, [Ljava/lang/String;

    const-string v1, "value"

    aput-object v1, v2, v5

    goto :goto_1

    .line 170
    :catch_0
    move-exception v0

    .line 171
    sget-object v1, Lcom/dexcom/cgm/content_provider/CgmContentProvider;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "query error:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/dexcom/cgm/f/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v8

    .line 173
    goto :goto_0

    :cond_1
    move-object v7, p5

    goto :goto_2

    .line 128
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 181
    sget-object v0, Lcom/dexcom/cgm/content_provider/CgmContentProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected call to update() with uri:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dexcom/cgm/f/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    const/4 v0, 0x0

    return v0
.end method

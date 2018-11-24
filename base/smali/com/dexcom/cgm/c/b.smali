.class public final Lcom/dexcom/cgm/c/b;
.super Ljava/lang/Object;
.source "CgmContract.java"


# static fields
.field public static final COLUMN_KEY:Ljava/lang/String; = "key"

.field public static final COLUMN_VALUE:Ljava/lang/String; = "value"

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String;

.field public static final CONTENT_TYPE:Ljava/lang/String;

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final PASSWORD_URI:Landroid/net/Uri;

.field public static final TABLE_NAME:Ljava/lang/String; = "keyValuePair"

.field public static final USERNAME_URI:Landroid/net/Uri;

.field public static final USER_DISPLAY_NAME_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    sget-object v0, Lcom/dexcom/cgm/c/a;->BASE_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "key_value"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/dexcom/cgm/c/b;->CONTENT_URI:Landroid/net/Uri;

    .line 33
    sget-object v0, Lcom/dexcom/cgm/c/a;->BASE_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "username_value"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/dexcom/cgm/c/b;->USERNAME_URI:Landroid/net/Uri;

    .line 34
    sget-object v0, Lcom/dexcom/cgm/c/a;->BASE_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "password_value"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/dexcom/cgm/c/b;->PASSWORD_URI:Landroid/net/Uri;

    .line 35
    sget-object v0, Lcom/dexcom/cgm/c/a;->BASE_CONTENT_URI:Landroid/net/Uri;

    .line 36
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "user_display_name_value"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/dexcom/cgm/c/b;->USER_DISPLAY_NAME_URI:Landroid/net/Uri;

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "vnd.android.cursor.dir/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/dexcom/cgm/c/b;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/key_value"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dexcom/cgm/c/b;->CONTENT_TYPE:Ljava/lang/String;

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "vnd.android.cursor.item/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/dexcom/cgm/c/b;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/key_value"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dexcom/cgm/c/b;->CONTENT_ITEM_TYPE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

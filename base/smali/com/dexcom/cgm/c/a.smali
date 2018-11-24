.class public final Lcom/dexcom/cgm/c/a;
.super Ljava/lang/Object;
.source "CgmContract.java"


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.dexcom.cgm.content_provider"

.field public static final BASE_CONTENT_URI:Landroid/net/Uri;

.field public static final PATH_KEY_VALUE:Ljava/lang/String; = "key_value"

.field public static final PATH_PASSWORD_VALUE:Ljava/lang/String; = "password_value"

.field public static final PATH_USERNAME_VALUE:Ljava/lang/String; = "username_value"

.field public static final PATH_USER_DISPLAY_NAME_VALUE:Ljava/lang/String; = "user_display_name_value"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 14
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    .line 15
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "com.dexcom.cgm.content_provider"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 16
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/dexcom/cgm/c/a;->BASE_CONTENT_URI:Landroid/net/Uri;

    .line 14
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

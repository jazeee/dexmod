.class public Lcom/flurry/sdk/il;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/flurry/sdk/il;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/il;->a:Ljava/lang/String;

    .line 23
    const-string v0, "com.google.android.gms.common.GooglePlayServicesUtil"

    sput-object v0, Lcom/flurry/sdk/il;->b:Ljava/lang/String;

    .line 24
    const-string v0, "com.google.android.gms.ads.identifier.AdvertisingIdClient"

    sput-object v0, Lcom/flurry/sdk/il;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 101
    :try_start_0
    const-string v0, "getId"

    invoke-static {p0, v0}, Lcom/flurry/sdk/im;->a(Ljava/lang/Object;Ljava/lang/String;)Lcom/flurry/sdk/in;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/in;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :goto_0
    return-object v0

    .line 102
    :catch_0
    move-exception v0

    .line 103
    sget-object v1, Lcom/flurry/sdk/il;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "GOOGLE PLAY SERVICES ERROR: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/flurry/sdk/fd;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    sget-object v0, Lcom/flurry/sdk/il;->a:Ljava/lang/String;

    const-string v1, "There is a problem with the Google Play Services library, which is required for Android Advertising ID support. The Google Play Services library should be integrated in any app shipping in the Play Store that uses analytics or advertising."

    invoke-static {v0, v1}, Lcom/flurry/sdk/fd;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p1

    .line 107
    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 38
    const/4 v0, 0x0

    :try_start_0
    const-string v2, "isGooglePlayServicesAvailable"

    .line 39
    invoke-static {v0, v2}, Lcom/flurry/sdk/im;->a(Ljava/lang/Object;Ljava/lang/String;)Lcom/flurry/sdk/in;

    move-result-object v0

    sget-object v2, Lcom/flurry/sdk/il;->b:Ljava/lang/String;

    .line 40
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/flurry/sdk/in;->a(Ljava/lang/Class;)Lcom/flurry/sdk/in;

    move-result-object v0

    const-class v2, Landroid/content/Context;

    .line 41
    invoke-virtual {v0, v2, p0}, Lcom/flurry/sdk/in;->a(Ljava/lang/Class;Ljava/lang/Object;)Lcom/flurry/sdk/in;

    move-result-object v0

    .line 43
    invoke-virtual {v0}, Lcom/flurry/sdk/in;->a()Ljava/lang/Object;

    move-result-object v0

    .line 45
    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 51
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 45
    goto :goto_0

    .line 46
    :catch_0
    move-exception v0

    .line 47
    sget-object v2, Lcom/flurry/sdk/il;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "GOOGLE PLAY SERVICES EXCEPTION: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/flurry/sdk/fd;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    sget-object v0, Lcom/flurry/sdk/il;->a:Ljava/lang/String;

    const-string v2, "There is a problem with the Google Play Services library, which is required for Android Advertising ID support. The Google Play Services library should be integrated in any app shipping in the Play Store that uses analytics or advertising."

    invoke-static {v0, v2}, Lcom/flurry/sdk/fd;->b(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 51
    goto :goto_0
.end method

.method static a(Ljava/lang/Object;Z)Z
    .locals 4

    .prologue
    .line 123
    :try_start_0
    const-string v0, "isLimitAdTrackingEnabled"

    invoke-static {p0, v0}, Lcom/flurry/sdk/im;->a(Ljava/lang/Object;Ljava/lang/String;)Lcom/flurry/sdk/in;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/in;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 124
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    .line 130
    :cond_0
    :goto_0
    return p1

    .line 125
    :catch_0
    move-exception v0

    .line 126
    sget-object v1, Lcom/flurry/sdk/il;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "GOOGLE PLAY SERVICES ERROR: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/flurry/sdk/fd;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    sget-object v0, Lcom/flurry/sdk/il;->a:Ljava/lang/String;

    const-string v1, "There is a problem with the Google Play Services library, which is required for Android Advertising ID support. The Google Play Services library should be integrated in any app shipping in the Play Store that uses analytics or advertising."

    invoke-static {v0, v1}, Lcom/flurry/sdk/fd;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)Lcom/flurry/sdk/dz;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 66
    if-nez p0, :cond_0

    .line 86
    :goto_0
    return-object v0

    .line 72
    :cond_0
    const/4 v1, 0x0

    :try_start_0
    const-string v2, "getAdvertisingIdInfo"

    .line 73
    invoke-static {v1, v2}, Lcom/flurry/sdk/im;->a(Ljava/lang/Object;Ljava/lang/String;)Lcom/flurry/sdk/in;

    move-result-object v1

    sget-object v2, Lcom/flurry/sdk/il;->c:Ljava/lang/String;

    .line 74
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/in;->a(Ljava/lang/Class;)Lcom/flurry/sdk/in;

    move-result-object v1

    const-class v2, Landroid/content/Context;

    .line 75
    invoke-virtual {v1, v2, p0}, Lcom/flurry/sdk/in;->a(Ljava/lang/Class;Ljava/lang/Object;)Lcom/flurry/sdk/in;

    move-result-object v1

    .line 77
    invoke-virtual {v1}, Lcom/flurry/sdk/in;->a()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 86
    new-instance v1, Lcom/flurry/sdk/dz;

    invoke-static {v2, v0}, Lcom/flurry/sdk/il;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/flurry/sdk/il;->a(Ljava/lang/Object;Z)Z

    move-result v2

    invoke-direct {v1, v0, v2}, Lcom/flurry/sdk/dz;-><init>(Ljava/lang/String;Z)V

    move-object v0, v1

    goto :goto_0

    .line 78
    :catch_0
    move-exception v1

    .line 79
    sget-object v2, Lcom/flurry/sdk/il;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "GOOGLE PLAY SERVICES ERROR: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/flurry/sdk/fd;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    sget-object v1, Lcom/flurry/sdk/il;->a:Ljava/lang/String;

    const-string v2, "There is a problem with the Google Play Services library, which is required for Android Advertising ID support. The Google Play Services library should be integrated in any app shipping in the Play Store that uses analytics or advertising."

    invoke-static {v1, v2}, Lcom/flurry/sdk/fd;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

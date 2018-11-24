.class public final enum Lcom/dexcom/cgm/test/api/StartupOption;
.super Ljava/lang/Enum;
.source "StartupOption.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dexcom/cgm/test/api/StartupOption;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dexcom/cgm/test/api/StartupOption;

.field public static final enum AppCompatibilityDisabled:Lcom/dexcom/cgm/test/api/StartupOption;

.field public static final enum DataPublishDisabled:Lcom/dexcom/cgm/test/api/StartupOption;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 11
    new-instance v0, Lcom/dexcom/cgm/test/api/StartupOption;

    const-string v1, "DataPublishDisabled"

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/StartupOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/StartupOption;->DataPublishDisabled:Lcom/dexcom/cgm/test/api/StartupOption;

    .line 12
    new-instance v0, Lcom/dexcom/cgm/test/api/StartupOption;

    const-string v1, "AppCompatibilityDisabled"

    invoke-direct {v0, v1, v3}, Lcom/dexcom/cgm/test/api/StartupOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/StartupOption;->AppCompatibilityDisabled:Lcom/dexcom/cgm/test/api/StartupOption;

    .line 9
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/dexcom/cgm/test/api/StartupOption;

    sget-object v1, Lcom/dexcom/cgm/test/api/StartupOption;->DataPublishDisabled:Lcom/dexcom/cgm/test/api/StartupOption;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dexcom/cgm/test/api/StartupOption;->AppCompatibilityDisabled:Lcom/dexcom/cgm/test/api/StartupOption;

    aput-object v1, v0, v3

    sput-object v0, Lcom/dexcom/cgm/test/api/StartupOption;->$VALUES:[Lcom/dexcom/cgm/test/api/StartupOption;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dexcom/cgm/test/api/StartupOption;
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/dexcom/cgm/test/api/StartupOption;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/test/api/StartupOption;

    return-object v0
.end method

.method public static values()[Lcom/dexcom/cgm/test/api/StartupOption;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/dexcom/cgm/test/api/StartupOption;->$VALUES:[Lcom/dexcom/cgm/test/api/StartupOption;

    invoke-virtual {v0}, [Lcom/dexcom/cgm/test/api/StartupOption;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dexcom/cgm/test/api/StartupOption;

    return-object v0
.end method

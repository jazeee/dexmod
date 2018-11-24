.class public final enum Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger$ShareStateType;
.super Ljava/lang/Enum;
.source "TechSupportLogger.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger$ShareStateType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger$ShareStateType;

.field public static final enum ShareDisabled:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger$ShareStateType;

.field public static final enum ShareEnabled:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger$ShareStateType;

.field public static final enum ShareError:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger$ShareStateType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 231
    new-instance v0, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger$ShareStateType;

    const-string v1, "ShareDisabled"

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger$ShareStateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger$ShareStateType;->ShareDisabled:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger$ShareStateType;

    .line 232
    new-instance v0, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger$ShareStateType;

    const-string v1, "ShareError"

    invoke-direct {v0, v1, v3}, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger$ShareStateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger$ShareStateType;->ShareError:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger$ShareStateType;

    .line 233
    new-instance v0, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger$ShareStateType;

    const-string v1, "ShareEnabled"

    invoke-direct {v0, v1, v4}, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger$ShareStateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger$ShareStateType;->ShareEnabled:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger$ShareStateType;

    .line 229
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger$ShareStateType;

    sget-object v1, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger$ShareStateType;->ShareDisabled:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger$ShareStateType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger$ShareStateType;->ShareError:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger$ShareStateType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger$ShareStateType;->ShareEnabled:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger$ShareStateType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger$ShareStateType;->$VALUES:[Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger$ShareStateType;

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
    .line 229
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger$ShareStateType;
    .locals 1

    .prologue
    .line 229
    const-class v0, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger$ShareStateType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger$ShareStateType;

    return-object v0
.end method

.method public static values()[Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger$ShareStateType;
    .locals 1

    .prologue
    .line 229
    sget-object v0, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger$ShareStateType;->$VALUES:[Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger$ShareStateType;

    invoke-virtual {v0}, [Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger$ShareStateType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger$ShareStateType;

    return-object v0
.end method

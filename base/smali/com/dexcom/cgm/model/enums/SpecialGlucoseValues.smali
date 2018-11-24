.class public final enum Lcom/dexcom/cgm/model/enums/SpecialGlucoseValues;
.super Ljava/lang/Enum;
.source "SpecialGlucoseValues.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dexcom/cgm/model/enums/SpecialGlucoseValues;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dexcom/cgm/model/enums/SpecialGlucoseValues;

.field public static final enum AbsoluteAberration:Lcom/dexcom/cgm/model/enums/SpecialGlucoseValues;

.field public static final enum CountsAberration:Lcom/dexcom/cgm/model/enums/SpecialGlucoseValues;

.field public static final HighestValidGlucoseValue:I = 0x191

.field public static final LowestValidGlucoseValue:I = 0x27

.field public static final enum NoAntenna:Lcom/dexcom/cgm/model/enums/SpecialGlucoseValues;

.field public static final enum None:Lcom/dexcom/cgm/model/enums/SpecialGlucoseValues;

.field public static final enum PowerAberration:Lcom/dexcom/cgm/model/enums/SpecialGlucoseValues;

.field public static final enum RFBadStatus:Lcom/dexcom/cgm/model/enums/SpecialGlucoseValues;

.field public static final enum SensorNotActive:Lcom/dexcom/cgm/model/enums/SpecialGlucoseValues;

.field public static final enum SensorOutOfCal:Lcom/dexcom/cgm/model/enums/SpecialGlucoseValues;


# instance fields
.field private final m_value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x6

    const/4 v7, 0x5

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 11
    new-instance v0, Lcom/dexcom/cgm/model/enums/SpecialGlucoseValues;

    const-string v1, "None"

    invoke-direct {v0, v1, v4, v4}, Lcom/dexcom/cgm/model/enums/SpecialGlucoseValues;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/SpecialGlucoseValues;->None:Lcom/dexcom/cgm/model/enums/SpecialGlucoseValues;

    .line 13
    new-instance v0, Lcom/dexcom/cgm/model/enums/SpecialGlucoseValues;

    const-string v1, "SensorNotActive"

    invoke-direct {v0, v1, v5, v5}, Lcom/dexcom/cgm/model/enums/SpecialGlucoseValues;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/SpecialGlucoseValues;->SensorNotActive:Lcom/dexcom/cgm/model/enums/SpecialGlucoseValues;

    .line 15
    new-instance v0, Lcom/dexcom/cgm/model/enums/SpecialGlucoseValues;

    const-string v1, "NoAntenna"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v6}, Lcom/dexcom/cgm/model/enums/SpecialGlucoseValues;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/SpecialGlucoseValues;->NoAntenna:Lcom/dexcom/cgm/model/enums/SpecialGlucoseValues;

    .line 17
    new-instance v0, Lcom/dexcom/cgm/model/enums/SpecialGlucoseValues;

    const-string v1, "SensorOutOfCal"

    invoke-direct {v0, v1, v6, v7}, Lcom/dexcom/cgm/model/enums/SpecialGlucoseValues;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/SpecialGlucoseValues;->SensorOutOfCal:Lcom/dexcom/cgm/model/enums/SpecialGlucoseValues;

    .line 18
    new-instance v0, Lcom/dexcom/cgm/model/enums/SpecialGlucoseValues;

    const-string v1, "CountsAberration"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v8}, Lcom/dexcom/cgm/model/enums/SpecialGlucoseValues;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/SpecialGlucoseValues;->CountsAberration:Lcom/dexcom/cgm/model/enums/SpecialGlucoseValues;

    .line 21
    new-instance v0, Lcom/dexcom/cgm/model/enums/SpecialGlucoseValues;

    const-string v1, "AbsoluteAberration"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v7, v2}, Lcom/dexcom/cgm/model/enums/SpecialGlucoseValues;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/SpecialGlucoseValues;->AbsoluteAberration:Lcom/dexcom/cgm/model/enums/SpecialGlucoseValues;

    .line 22
    new-instance v0, Lcom/dexcom/cgm/model/enums/SpecialGlucoseValues;

    const-string v1, "PowerAberration"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v8, v2}, Lcom/dexcom/cgm/model/enums/SpecialGlucoseValues;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/SpecialGlucoseValues;->PowerAberration:Lcom/dexcom/cgm/model/enums/SpecialGlucoseValues;

    .line 27
    new-instance v0, Lcom/dexcom/cgm/model/enums/SpecialGlucoseValues;

    const-string v1, "RFBadStatus"

    const/4 v2, 0x7

    const/16 v3, 0xc

    invoke-direct {v0, v1, v2, v3}, Lcom/dexcom/cgm/model/enums/SpecialGlucoseValues;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/SpecialGlucoseValues;->RFBadStatus:Lcom/dexcom/cgm/model/enums/SpecialGlucoseValues;

    .line 9
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/dexcom/cgm/model/enums/SpecialGlucoseValues;

    sget-object v1, Lcom/dexcom/cgm/model/enums/SpecialGlucoseValues;->None:Lcom/dexcom/cgm/model/enums/SpecialGlucoseValues;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dexcom/cgm/model/enums/SpecialGlucoseValues;->SensorNotActive:Lcom/dexcom/cgm/model/enums/SpecialGlucoseValues;

    aput-object v1, v0, v5

    const/4 v1, 0x2

    sget-object v2, Lcom/dexcom/cgm/model/enums/SpecialGlucoseValues;->NoAntenna:Lcom/dexcom/cgm/model/enums/SpecialGlucoseValues;

    aput-object v2, v0, v1

    sget-object v1, Lcom/dexcom/cgm/model/enums/SpecialGlucoseValues;->SensorOutOfCal:Lcom/dexcom/cgm/model/enums/SpecialGlucoseValues;

    aput-object v1, v0, v6

    const/4 v1, 0x4

    sget-object v2, Lcom/dexcom/cgm/model/enums/SpecialGlucoseValues;->CountsAberration:Lcom/dexcom/cgm/model/enums/SpecialGlucoseValues;

    aput-object v2, v0, v1

    sget-object v1, Lcom/dexcom/cgm/model/enums/SpecialGlucoseValues;->AbsoluteAberration:Lcom/dexcom/cgm/model/enums/SpecialGlucoseValues;

    aput-object v1, v0, v7

    sget-object v1, Lcom/dexcom/cgm/model/enums/SpecialGlucoseValues;->PowerAberration:Lcom/dexcom/cgm/model/enums/SpecialGlucoseValues;

    aput-object v1, v0, v8

    const/4 v1, 0x7

    sget-object v2, Lcom/dexcom/cgm/model/enums/SpecialGlucoseValues;->RFBadStatus:Lcom/dexcom/cgm/model/enums/SpecialGlucoseValues;

    aput-object v2, v0, v1

    sput-object v0, Lcom/dexcom/cgm/model/enums/SpecialGlucoseValues;->$VALUES:[Lcom/dexcom/cgm/model/enums/SpecialGlucoseValues;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 37
    iput p3, p0, Lcom/dexcom/cgm/model/enums/SpecialGlucoseValues;->m_value:I

    .line 38
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dexcom/cgm/model/enums/SpecialGlucoseValues;
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/dexcom/cgm/model/enums/SpecialGlucoseValues;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/model/enums/SpecialGlucoseValues;

    return-object v0
.end method

.method public static values()[Lcom/dexcom/cgm/model/enums/SpecialGlucoseValues;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/dexcom/cgm/model/enums/SpecialGlucoseValues;->$VALUES:[Lcom/dexcom/cgm/model/enums/SpecialGlucoseValues;

    invoke-virtual {v0}, [Lcom/dexcom/cgm/model/enums/SpecialGlucoseValues;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dexcom/cgm/model/enums/SpecialGlucoseValues;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/dexcom/cgm/model/enums/SpecialGlucoseValues;->m_value:I

    return v0
.end method

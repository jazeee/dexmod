.class public abstract enum Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;
.super Ljava/lang/Enum;
.source "HealthDataResolver.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final enum AND:Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;

.field public static final enum COMPARABLE:Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum NOT:Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;

.field public static final enum NUMBER_ARRAY:Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;

.field public static final enum OR:Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;

.field public static final enum STRING:Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;

.field public static final enum STRING_ARRAY:Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;

.field private static final synthetic a:[Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 3212
    new-instance v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType$1;

    const-string v1, "COMPARABLE"

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;->COMPARABLE:Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;

    .line 3218
    new-instance v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType$2;

    const-string v1, "STRING"

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;->STRING:Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;

    .line 3224
    new-instance v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType$3;

    const-string v1, "STRING_ARRAY"

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType$3;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;->STRING_ARRAY:Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;

    .line 3230
    new-instance v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType$4;

    const-string v1, "NUMBER_ARRAY"

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType$4;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;->NUMBER_ARRAY:Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;

    .line 3236
    new-instance v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType$5;

    const-string v1, "AND"

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType$5;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;->AND:Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;

    .line 3242
    new-instance v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType$6;

    const-string v1, "OR"

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType$6;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;->OR:Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;

    .line 3248
    new-instance v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType$7;

    const-string v1, "NOT"

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType$7;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;->NOT:Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;

    .line 3211
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;

    const/4 v1, 0x0

    sget-object v2, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;->COMPARABLE:Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;->STRING:Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;->STRING_ARRAY:Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;->NUMBER_ARRAY:Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;->AND:Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;->OR:Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;->NOT:Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;->a:[Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;

    .line 3265
    new-instance v0, Lcom/samsung/android/sdk/healthdata/r;

    invoke-direct {v0}, Lcom/samsung/android/sdk/healthdata/r;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;->CREATOR:Landroid/os/Parcelable$Creator;

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
    .line 3211
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IB)V
    .locals 0

    .prologue
    .line 3211
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;
    .locals 1

    .prologue
    .line 3211
    const-class v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;
    .locals 1

    .prologue
    .line 3211
    sget-object v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;->a:[Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;

    invoke-virtual {v0}, [Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;

    return-object v0
.end method


# virtual methods
.method abstract a(Landroid/os/Parcel;)Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 3257
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 3262
    invoke-virtual {p0}, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3263
    return-void
.end method

.class public abstract Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;
.super Ljava/lang/Object;
.source "HealthDataResolver.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;",
            ">;"
        }
    .end annotation
.end field

.field protected mType:Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2989
    new-instance v0, Lcom/samsung/android/sdk/healthdata/q;

    invoke-direct {v0}, Lcom/samsung/android/sdk/healthdata/q;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 2946
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2941
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;->mFilters:Ljava/util/List;

    .line 2947
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 2952
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2941
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;->mFilters:Ljava/util/List;

    .line 2953
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;->readFromParcel(Landroid/os/Parcel;)V

    .line 2954
    return-void
.end method

.method static synthetic a(Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;Landroid/os/Parcel;)Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;
    .locals 1

    .prologue
    .line 2936
    .line 3957
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;->a(Landroid/os/Parcel;)Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;

    move-result-object v0

    .line 2936
    return-object v0
.end method

.method public static varargs and(Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;[Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;)Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;
    .locals 2

    .prologue
    .line 3035
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 3036
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Filter arguments for and method should not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3038
    :cond_1
    new-instance v0, Lcom/samsung/android/sdk/internal/healthdata/query/AndFilter;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/sdk/internal/healthdata/query/AndFilter;-><init>(Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;[Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;)V

    return-object v0
.end method

.method protected static checkFilter(Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;)V
    .locals 2

    .prologue
    .line 3010
    if-nez p0, :cond_0

    .line 3011
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid filter instance"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3013
    :cond_0
    return-void
.end method

.method public static eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)",
            "Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;"
        }
    .end annotation

    .prologue
    .line 3087
    if-nez p0, :cond_0

    .line 3088
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid property or value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3090
    :cond_0
    if-nez p1, :cond_1

    .line 3091
    new-instance v0, Lcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter;

    sget-object v1, Lcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter$Operator;->EQ:Lcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter$Operator;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter;-><init>(Lcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter$Operator;Ljava/lang/String;Ljava/lang/Number;)V

    .line 3096
    :goto_0
    return-object v0

    .line 3093
    :cond_1
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_2

    .line 3094
    new-instance v0, Lcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter;

    sget-object v1, Lcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter$Operator;->EQ:Lcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter$Operator;

    check-cast p1, Ljava/lang/Number;

    invoke-direct {v0, v1, p0, p1}, Lcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter;-><init>(Lcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter$Operator;Ljava/lang/String;Ljava/lang/Number;)V

    goto :goto_0

    .line 3095
    :cond_2
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 3096
    new-instance v0, Lcom/samsung/android/sdk/internal/healthdata/query/StringFilter;

    check-cast p1, Ljava/lang/String;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/sdk/internal/healthdata/query/StringFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3098
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid type of value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static greaterThan(Ljava/lang/String;Ljava/lang/Comparable;)Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable",
            "<TT;>;>(",
            "Ljava/lang/String;",
            "TT;)",
            "Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;"
        }
    .end annotation

    .prologue
    .line 3153
    if-eqz p0, :cond_0

    instance-of v0, p1, Ljava/lang/Number;

    if-nez v0, :cond_1

    .line 3154
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid property or value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3156
    :cond_1
    new-instance v0, Lcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter;

    sget-object v1, Lcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter$Operator;->GREATER_THAN:Lcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter$Operator;

    check-cast p1, Ljava/lang/Number;

    invoke-direct {v0, v1, p0, p1}, Lcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter;-><init>(Lcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter$Operator;Ljava/lang/String;Ljava/lang/Number;)V

    return-object v0
.end method

.method public static greaterThanEquals(Ljava/lang/String;Ljava/lang/Comparable;)Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable",
            "<TT;>;>(",
            "Ljava/lang/String;",
            "TT;)",
            "Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;"
        }
    .end annotation

    .prologue
    .line 3172
    if-eqz p0, :cond_0

    instance-of v0, p1, Ljava/lang/Number;

    if-nez v0, :cond_1

    .line 3173
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid property or value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3175
    :cond_1
    new-instance v0, Lcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter;

    sget-object v1, Lcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter$Operator;->GREATER_THAN_EQUALS:Lcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter$Operator;

    check-cast p1, Ljava/lang/Number;

    invoke-direct {v0, v1, p0, p1}, Lcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter;-><init>(Lcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter$Operator;Ljava/lang/String;Ljava/lang/Number;)V

    return-object v0
.end method

.method public static in(Ljava/lang/String;[Ljava/lang/Object;)Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "[TT;)",
            "Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;"
        }
    .end annotation

    .prologue
    .line 3196
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 3197
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid property or values"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3199
    :cond_1
    instance-of v0, p1, [Ljava/lang/Number;

    if-eqz v0, :cond_2

    .line 3200
    new-instance v0, Lcom/samsung/android/sdk/internal/healthdata/query/NumberArrayFilter;

    check-cast p1, [Ljava/lang/Number;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/sdk/internal/healthdata/query/NumberArrayFilter;-><init>(Ljava/lang/String;[Ljava/lang/Number;)V

    .line 3202
    :goto_0
    return-object v0

    .line 3201
    :cond_2
    instance-of v0, p1, [Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 3202
    new-instance v0, Lcom/samsung/android/sdk/internal/healthdata/query/StringArrayFilter;

    check-cast p1, [Ljava/lang/String;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/sdk/internal/healthdata/query/StringArrayFilter;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 3204
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid type of value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static lessThan(Ljava/lang/String;Ljava/lang/Comparable;)Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable",
            "<TT;>;>(",
            "Ljava/lang/String;",
            "TT;)",
            "Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;"
        }
    .end annotation

    .prologue
    .line 3115
    if-eqz p0, :cond_0

    instance-of v0, p1, Ljava/lang/Number;

    if-nez v0, :cond_1

    .line 3116
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid property or value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3118
    :cond_1
    new-instance v0, Lcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter;

    sget-object v1, Lcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter$Operator;->LESS_THAN:Lcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter$Operator;

    check-cast p1, Ljava/lang/Number;

    invoke-direct {v0, v1, p0, p1}, Lcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter;-><init>(Lcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter$Operator;Ljava/lang/String;Ljava/lang/Number;)V

    return-object v0
.end method

.method public static lessThanEquals(Ljava/lang/String;Ljava/lang/Comparable;)Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable",
            "<TT;>;>(",
            "Ljava/lang/String;",
            "TT;)",
            "Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;"
        }
    .end annotation

    .prologue
    .line 3134
    if-eqz p0, :cond_0

    instance-of v0, p1, Ljava/lang/Number;

    if-nez v0, :cond_1

    .line 3135
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid property or value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3137
    :cond_1
    new-instance v0, Lcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter;

    sget-object v1, Lcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter$Operator;->LESS_THAN_EQUALS:Lcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter$Operator;

    check-cast p1, Ljava/lang/Number;

    invoke-direct {v0, v1, p0, p1}, Lcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter;-><init>(Lcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter$Operator;Ljava/lang/String;Ljava/lang/Number;)V

    return-object v0
.end method

.method public static not(Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;)Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;
    .locals 1

    .prologue
    .line 3071
    new-instance v0, Lcom/samsung/android/sdk/internal/healthdata/query/NotFilter;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/internal/healthdata/query/NotFilter;-><init>(Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;)V

    return-object v0
.end method

.method public static varargs or(Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;[Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;)Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;
    .locals 2

    .prologue
    .line 3054
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 3055
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Filter arguments for or method should not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3057
    :cond_1
    new-instance v0, Lcom/samsung/android/sdk/internal/healthdata/query/OrFilter;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/sdk/internal/healthdata/query/OrFilter;-><init>(Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;[Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 2966
    const/4 v0, 0x0

    return v0
.end method

.method public getFilters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3019
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;->mFilters:Ljava/util/List;

    return-object v0
.end method

.method protected readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 2982
    const-class v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;

    iput-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;->mType:Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;

    .line 2983
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 2975
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;->mType:Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 2976
    return-void
.end method

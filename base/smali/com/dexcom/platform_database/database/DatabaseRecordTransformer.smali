.class public Lcom/dexcom/platform_database/database/DatabaseRecordTransformer;
.super Ljava/lang/Object;
.source "DatabaseRecordTransformer.java"


# static fields
.field private static final ORIGINAL_DATABASE_REVISION:I = 0x1

.field private static cachedColumnFields:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Field;",
            ">;>;"
        }
    .end annotation
.end field

.field private static cachedColumnNames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/reflect/Field;",
            "Lcom/dexcom/platform_database/database/DatabaseRecordTransformer$ColumnDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private static cachedConstructors:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class;",
            "Ljava/lang/reflect/Constructor;",
            ">;"
        }
    .end annotation
.end field

.field private static cachedPrimaryKeys:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/dexcom/platform_database/database/DatabaseRecordTransformer;->cachedColumnFields:Ljava/util/HashMap;

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/dexcom/platform_database/database/DatabaseRecordTransformer;->cachedColumnNames:Ljava/util/HashMap;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/dexcom/platform_database/database/DatabaseRecordTransformer;->cachedPrimaryKeys:Ljava/util/HashMap;

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/dexcom/platform_database/database/DatabaseRecordTransformer;->cachedConstructors:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static contentValuesFromObject(Ljava/lang/Object;I)Landroid/content/ContentValues;
    .locals 4

    .prologue
    .line 217
    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 219
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/dexcom/platform_database/database/DatabaseRecordTransformer;->getColumnFields(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 220
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;

    .line 222
    invoke-static {v0}, Lcom/dexcom/platform_database/database/DatabaseRecordTransformer;->getColumnDescriptorFromField(Ljava/lang/reflect/Field;)Lcom/dexcom/platform_database/database/DatabaseRecordTransformer$ColumnDescriptor;

    move-result-object v3

    .line 223
    if-eqz v3, :cond_1

    iget v3, v3, Lcom/dexcom/platform_database/database/DatabaseRecordTransformer$ColumnDescriptor;->version:I

    if-gt v3, p1, :cond_1

    .line 225
    invoke-static {v0, p0, v1}, Lcom/dexcom/platform_database/database/DatabaseRecordTransformer;->putFieldIntoValues(Ljava/lang/reflect/Field;Ljava/lang/Object;Landroid/content/ContentValues;)Landroid/content/ContentValues;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    move-object v1, v0

    .line 227
    goto :goto_0

    .line 230
    :catch_0
    move-exception v0

    .line 232
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 228
    :cond_0
    return-object v1

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method private static getAlterStringArrayForClassType(Ljava/lang/Class;I)[Ljava/lang/String;
    .locals 6

    .prologue
    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "ALTER TABLE "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 87
    invoke-static {p0}, Lcom/dexcom/platform_database/database/DatabaseRecordTransformer;->getColumnFields(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 88
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;

    .line 90
    invoke-static {v0}, Lcom/dexcom/platform_database/database/DatabaseRecordTransformer;->getColumnDescriptorFromField(Ljava/lang/reflect/Field;)Lcom/dexcom/platform_database/database/DatabaseRecordTransformer$ColumnDescriptor;

    move-result-object v4

    .line 91
    if-eqz v4, :cond_0

    iget v5, v4, Lcom/dexcom/platform_database/database/DatabaseRecordTransformer$ColumnDescriptor;->version:I

    if-ne v5, p1, :cond_0

    .line 94
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/dexcom/platform_database/database/DatabaseRecordTransformer;->getSQLiteTypeFromField(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 96
    const-string v5, " ADD "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    iget-object v4, v4, Lcom/dexcom/platform_database/database/DatabaseRecordTransformer$ColumnDescriptor;->name:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    const-string v0, "; "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 102
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "(?<=; )"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 103
    return-object v0
.end method

.method private static getClassVersionNumber(Ljava/lang/Class;)I
    .locals 6

    .prologue
    .line 569
    invoke-virtual {p0}, Ljava/lang/Class;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v2

    .line 570
    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 572
    invoke-interface {v0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Lcom/dexcom/cgm/model/DatabaseTable;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 574
    check-cast v0, Lcom/dexcom/cgm/model/DatabaseTable;

    invoke-interface {v0}, Lcom/dexcom/cgm/model/DatabaseTable;->createVersion()I

    move-result v0

    .line 579
    :goto_1
    return v0

    .line 570
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 579
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private static getColumnDescriptorFromField(Ljava/lang/reflect/Field;)Lcom/dexcom/platform_database/database/DatabaseRecordTransformer$ColumnDescriptor;
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 597
    sget-object v0, Lcom/dexcom/platform_database/database/DatabaseRecordTransformer;->cachedColumnNames:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 600
    const/4 v2, 0x1

    .line 601
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v4

    .line 602
    array-length v5, v4

    const/4 v0, 0x0

    move v3, v0

    :goto_0
    if-ge v3, v5, :cond_5

    aget-object v0, v4, v3

    .line 604
    invoke-interface {v0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v6

    const-class v7, Lcom/dexcom/cgm/model/DatabaseColumn;

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 606
    check-cast v0, Lcom/dexcom/cgm/model/DatabaseColumn;

    .line 607
    invoke-interface {v0}, Lcom/dexcom/cgm/model/DatabaseColumn;->value()Ljava/lang/String;

    move-result-object v2

    .line 608
    invoke-interface {v0}, Lcom/dexcom/cgm/model/DatabaseColumn;->version()I

    move-result v0

    move v8, v0

    move-object v0, v2

    move v2, v8

    .line 612
    :goto_1
    if-nez v0, :cond_0

    .line 613
    const-string v0, ""

    .line 614
    :cond_0
    sget-object v3, Lcom/dexcom/platform_database/database/DatabaseRecordTransformer;->cachedColumnNames:Ljava/util/HashMap;

    new-instance v4, Lcom/dexcom/platform_database/database/DatabaseRecordTransformer$ColumnDescriptor;

    invoke-direct {v4, v0, v2}, Lcom/dexcom/platform_database/database/DatabaseRecordTransformer$ColumnDescriptor;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v3, p0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 617
    :cond_1
    sget-object v0, Lcom/dexcom/platform_database/database/DatabaseRecordTransformer;->cachedColumnNames:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/platform_database/database/DatabaseRecordTransformer$ColumnDescriptor;

    .line 618
    if-eqz v0, :cond_2

    iget-object v2, v0, Lcom/dexcom/platform_database/database/DatabaseRecordTransformer$ColumnDescriptor;->name:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move-object v0, v1

    .line 621
    :cond_3
    return-object v0

    .line 602
    :cond_4
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_5
    move-object v0, v1

    goto :goto_1
.end method

.method private static getColumnFields(Ljava/lang/Class;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation

    .prologue
    .line 546
    sget-object v0, Lcom/dexcom/platform_database/database/DatabaseRecordTransformer;->cachedColumnFields:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 548
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 550
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 551
    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 553
    invoke-static {v4}, Lcom/dexcom/platform_database/database/DatabaseRecordTransformer;->getColumnNameFromField(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v5

    .line 554
    if-eqz v5, :cond_0

    .line 556
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 557
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 551
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 561
    :cond_1
    sget-object v0, Lcom/dexcom/platform_database/database/DatabaseRecordTransformer;->cachedColumnFields:Ljava/util/HashMap;

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 564
    :cond_2
    sget-object v0, Lcom/dexcom/platform_database/database/DatabaseRecordTransformer;->cachedColumnFields:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private static getColumnNameFromField(Ljava/lang/reflect/Field;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 588
    invoke-static {p0}, Lcom/dexcom/platform_database/database/DatabaseRecordTransformer;->getColumnDescriptorFromField(Ljava/lang/reflect/Field;)Lcom/dexcom/platform_database/database/DatabaseRecordTransformer$ColumnDescriptor;

    move-result-object v0

    .line 589
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/dexcom/platform_database/database/DatabaseRecordTransformer$ColumnDescriptor;->name:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 590
    :cond_0
    const/4 v0, 0x0

    .line 592
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, v0, Lcom/dexcom/platform_database/database/DatabaseRecordTransformer$ColumnDescriptor;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getCreateOrAlterStatementArray(Ljava/lang/Class;I)[Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 59
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getCreateOrAlterStatementArray() version("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dexcom/cgm/f/b;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-static {p0}, Lcom/dexcom/platform_database/database/DatabaseRecordTransformer;->getClassVersionNumber(Ljava/lang/Class;)I

    move-result v0

    .line 62
    if-le v0, p1, :cond_0

    .line 65
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v3

    .line 73
    :goto_0
    return-object v0

    .line 67
    :cond_0
    if-ne p1, v0, :cond_1

    .line 69
    new-array v0, v4, [Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/dexcom/platform_database/database/DatabaseRecordTransformer;->getSetupStringForClassType(Ljava/lang/Class;I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    goto :goto_0

    .line 73
    :cond_1
    invoke-static {p0, p1}, Lcom/dexcom/platform_database/database/DatabaseRecordTransformer;->getAlterStringArrayForClassType(Ljava/lang/Class;I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getDefaultConstructorForClass(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 5

    .prologue
    .line 678
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 680
    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 682
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v4

    array-length v4, v4

    if-nez v4, :cond_0

    .line 684
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 688
    :goto_1
    return-object v0

    .line 680
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 688
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static getObjectFromCursorForField(Landroid/database/Cursor;Ljava/lang/reflect/Field;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 453
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 454
    invoke-static {p1}, Lcom/dexcom/platform_database/database/DatabaseRecordTransformer;->getColumnNameFromField(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v1

    .line 456
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 458
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 461
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 537
    :goto_1
    return-object v0

    .line 461
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 463
    :cond_1
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 465
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_1

    .line 467
    :cond_2
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 469
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    .line 471
    :cond_3
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 473
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_1

    .line 475
    :cond_4
    const-class v2, Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 477
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    .line 479
    :cond_5
    const-class v2, Ljava/lang/Long;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 481
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_1

    .line 483
    :cond_6
    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 485
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 487
    :cond_7
    const-class v2, Ljava/util/UUID;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 489
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    goto :goto_1

    .line 491
    :cond_8
    const-class v2, Lcom/dexcom/cgm/k/j;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 493
    new-instance v0, Lcom/dexcom/cgm/k/j;

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/dexcom/cgm/k/j;-><init>(J)V

    goto/16 :goto_1

    .line 495
    :cond_9
    const-class v2, Lcom/dexcom/cgm/k/n;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 497
    new-instance v0, Lcom/dexcom/cgm/k/n;

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/dexcom/cgm/k/n;-><init>(J)V

    goto/16 :goto_1

    .line 499
    :cond_a
    const-class v2, Lcom/dexcom/cgm/model/TransmitterId;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 501
    new-instance v0, Lcom/dexcom/cgm/model/TransmitterId;

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dexcom/cgm/model/TransmitterId;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 503
    :cond_b
    const-class v2, Lcom/dexcom/cgm/model/enums/AlgorithmState;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 505
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Lcom/dexcom/cgm/model/enums/AlgorithmState;->valueOf(I)Lcom/dexcom/cgm/model/enums/AlgorithmState;

    move-result-object v0

    goto/16 :goto_1

    .line 507
    :cond_c
    const-class v2, Lcom/dexcom/cgm/model/enums/MeterEntryType;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 509
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dexcom/cgm/model/enums/MeterEntryType;->fromString(Ljava/lang/String;)Lcom/dexcom/cgm/model/enums/MeterEntryType;

    move-result-object v0

    goto/16 :goto_1

    .line 511
    :cond_d
    const-class v2, Lcom/dexcom/cgm/model/enums/SessionLogType;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 513
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dexcom/cgm/model/enums/SessionLogType;->fromString(Ljava/lang/String;)Lcom/dexcom/cgm/model/enums/SessionLogType;

    move-result-object v0

    goto/16 :goto_1

    .line 515
    :cond_e
    const-class v2, Lcom/dexcom/cgm/model/enums/AlertSound;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 517
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dexcom/cgm/model/enums/AlertSound;->fromString(Ljava/lang/String;)Lcom/dexcom/cgm/model/enums/AlertSound;

    move-result-object v0

    goto/16 :goto_1

    .line 519
    :cond_f
    const-class v2, Lcom/dexcom/cgm/model/enums/UserEventType;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 521
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dexcom/cgm/model/enums/UserEventType;->fromString(Ljava/lang/String;)Lcom/dexcom/cgm/model/enums/UserEventType;

    move-result-object v0

    goto/16 :goto_1

    .line 523
    :cond_10
    const-class v2, Lcom/dexcom/cgm/model/enums/UserEventSubType;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 525
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dexcom/cgm/model/enums/UserEventSubType;->fromString(Ljava/lang/String;)Lcom/dexcom/cgm/model/enums/UserEventSubType;

    move-result-object v0

    goto/16 :goto_1

    .line 527
    :cond_11
    const-class v2, Lcom/dexcom/cgm/model/enums/TechSupportActivityType;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 529
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dexcom/cgm/model/enums/TechSupportActivityType;->fromString(Ljava/lang/String;)Lcom/dexcom/cgm/model/enums/TechSupportActivityType;

    move-result-object v0

    goto/16 :goto_1

    .line 531
    :cond_12
    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 534
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    goto/16 :goto_1

    .line 537
    :cond_13
    const/4 v0, 0x0

    goto/16 :goto_1
.end method

.method private static getSQLiteTypeFromField(Ljava/lang/Class;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 244
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    const-string v0, "BOOLEAN"

    .line 294
    :goto_0
    return-object v0

    .line 248
    :cond_0
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 250
    const-string v0, "INTEGER"

    goto :goto_0

    .line 252
    :cond_1
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 254
    const-string v0, "INTEGER"

    goto :goto_0

    .line 256
    :cond_2
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 258
    const-string v0, "REAL"

    goto :goto_0

    .line 260
    :cond_3
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 262
    const-string v0, "INTEGER"

    goto :goto_0

    .line 264
    :cond_4
    const-class v0, Ljava/lang/Long;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 266
    const-string v0, "INTEGER"

    goto :goto_0

    .line 268
    :cond_5
    const-class v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 270
    const-string v0, "TEXT"

    goto :goto_0

    .line 272
    :cond_6
    const-class v0, Ljava/util/UUID;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 274
    const-string v0, "TEXT"

    goto :goto_0

    .line 276
    :cond_7
    const-class v0, Lcom/dexcom/cgm/k/j;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 278
    const-string v0, "INTEGER"

    goto :goto_0

    .line 280
    :cond_8
    const-class v0, Lcom/dexcom/cgm/k/n;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 282
    const-string v0, "INTEGER"

    goto :goto_0

    .line 284
    :cond_9
    const-class v0, Lcom/dexcom/cgm/model/TransmitterId;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 286
    const-string v0, "TEXT"

    goto :goto_0

    .line 288
    :cond_a
    const-class v0, Lcom/dexcom/cgm/model/enums/AlgorithmState;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 290
    const-string v0, "INTEGER"

    goto :goto_0

    .line 292
    :cond_b
    invoke-virtual {p0}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 294
    const-string v0, "TEXT"

    goto/16 :goto_0

    .line 298
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Developer error: Field of type \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' had a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/dexcom/cgm/model/DatabaseColumn;

    .line 299
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " annotation attached to it, but that type was unrecognized by "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/dexcom/platform_database/database/DatabaseRecordTransformer;

    .line 301
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 302
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getSetupStringForClassType(Ljava/lang/Class;I)Ljava/lang/String;
    .locals 10

    .prologue
    .line 112
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CREATE TABLE IF NOT EXISTS "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 115
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    const-string v0, "("

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-static {p0}, Lcom/dexcom/platform_database/database/DatabaseRecordTransformer;->getColumnFields(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v3

    .line 119
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 121
    const/4 v0, 0x1

    move v1, v0

    :goto_0
    if-gt v1, p1, :cond_4

    .line 123
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;

    .line 125
    invoke-static {v0}, Lcom/dexcom/platform_database/database/DatabaseRecordTransformer;->getColumnNameFromField(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v6

    .line 126
    if-eqz v6, :cond_0

    .line 129
    invoke-static {v0}, Lcom/dexcom/platform_database/database/DatabaseRecordTransformer;->getColumnDescriptorFromField(Ljava/lang/reflect/Field;)Lcom/dexcom/platform_database/database/DatabaseRecordTransformer$ColumnDescriptor;

    move-result-object v7

    .line 131
    if-eqz v7, :cond_1

    iget v7, v7, Lcom/dexcom/platform_database/database/DatabaseRecordTransformer$ColumnDescriptor;->version:I

    if-ne v7, v1, :cond_0

    .line 134
    :cond_1
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v7

    invoke-static {v7}, Lcom/dexcom/platform_database/database/DatabaseRecordTransformer;->getSQLiteTypeFromField(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    .line 136
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 137
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    invoke-static {v0}, Lcom/dexcom/platform_database/database/DatabaseRecordTransformer;->isFieldPrimaryKey(Ljava/lang/reflect/Field;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 140
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    :cond_2
    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 121
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 149
    :cond_4
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 151
    const-string v0, "PRIMARY KEY ("

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_7

    .line 154
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 155
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    const-string v3, "record_id"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 158
    const-string v0, " AUTOINCREMENT"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    :cond_5
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v1, v0, :cond_6

    .line 162
    const-string v0, ","

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    :cond_6
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 165
    :cond_7
    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    :cond_8
    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static instantiateObjectOfClass(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 653
    :try_start_0
    sget-object v0, Lcom/dexcom/platform_database/database/DatabaseRecordTransformer;->cachedConstructors:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 655
    invoke-static {p0}, Lcom/dexcom/platform_database/database/DatabaseRecordTransformer;->getDefaultConstructorForClass(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 656
    if-nez v0, :cond_0

    .line 658
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/dexcom/platform_database/database/DatabaseRecordTransformer;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " could not instantiate an object of class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 659
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " because it had no default (parameterless) constructor."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 667
    :catch_0
    move-exception v0

    .line 669
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 662
    :cond_0
    :try_start_1
    sget-object v1, Lcom/dexcom/platform_database/database/DatabaseRecordTransformer;->cachedConstructors:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 665
    :cond_1
    sget-object v0, Lcom/dexcom/platform_database/database/DatabaseRecordTransformer;->cachedConstructors:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Constructor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    return-object v0
.end method

.method private static isFieldPrimaryKey(Ljava/lang/reflect/Field;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 626
    sget-object v1, Lcom/dexcom/platform_database/database/DatabaseRecordTransformer;->cachedPrimaryKeys:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    .line 629
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v2

    .line 630
    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v2, v1

    .line 632
    invoke-interface {v4}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Lcom/dexcom/cgm/model/DatabasePrimaryKey;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 634
    const/4 v0, 0x1

    .line 630
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 638
    :cond_1
    sget-object v1, Lcom/dexcom/platform_database/database/DatabaseRecordTransformer;->cachedPrimaryKeys:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 641
    :cond_2
    sget-object v0, Lcom/dexcom/platform_database/database/DatabaseRecordTransformer;->cachedPrimaryKeys:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static objectFromCursor(Landroid/database/Cursor;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 184
    :try_start_0
    invoke-static {p1}, Lcom/dexcom/platform_database/database/DatabaseRecordTransformer;->instantiateObjectOfClass(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .line 186
    invoke-static {p1}, Lcom/dexcom/platform_database/database/DatabaseRecordTransformer;->getColumnFields(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 187
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 191
    :try_start_1
    invoke-static {p0, v0}, Lcom/dexcom/platform_database/database/DatabaseRecordTransformer;->getObjectFromCursorForField(Landroid/database/Cursor;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v3

    .line 192
    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 194
    :catch_0
    move-exception v1

    .line 196
    :try_start_2
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Field = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 201
    :catch_1
    move-exception v0

    .line 203
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 199
    :cond_0
    return-object v1
.end method

.method private static putFieldIntoValues(Ljava/lang/reflect/Field;Ljava/lang/Object;Landroid/content/ContentValues;)Landroid/content/ContentValues;
    .locals 4

    .prologue
    .line 319
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 439
    :goto_0
    return-object p2

    .line 322
    :cond_0
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 323
    invoke-static {p0}, Lcom/dexcom/platform_database/database/DatabaseRecordTransformer;->getColumnNameFromField(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v1

    .line 325
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 327
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v0

    .line 328
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 441
    :catch_0
    move-exception v0

    .line 443
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 330
    :cond_1
    :try_start_1
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 332
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v2

    .line 333
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0

    .line 335
    :cond_2
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 337
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    .line 338
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 340
    :cond_3
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 342
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->getDouble(Ljava/lang/Object;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 343
    invoke-virtual {v0}, Ljava/lang/Double;->isNaN()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 345
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "NaN is not supported by the database"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 347
    :cond_4
    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    goto :goto_0

    .line 349
    :cond_5
    const-class v2, Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 351
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 352
    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 354
    :cond_6
    const-class v2, Ljava/lang/Long;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 356
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 357
    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_0

    .line 359
    :cond_7
    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 361
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 362
    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 364
    :cond_8
    const-class v2, Ljava/util/UUID;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 366
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/UUID;

    .line 367
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 369
    :cond_9
    const-class v2, Lcom/dexcom/cgm/k/j;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 371
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/k/j;

    .line 372
    invoke-virtual {v0}, Lcom/dexcom/cgm/k/j;->getTimeInSeconds()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_0

    .line 374
    :cond_a
    const-class v2, Lcom/dexcom/cgm/k/n;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 376
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/k/n;

    .line 377
    invoke-virtual {v0}, Lcom/dexcom/cgm/k/n;->getTimeInSeconds()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_0

    .line 379
    :cond_b
    const-class v2, Lcom/dexcom/cgm/model/TransmitterId;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 381
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/model/TransmitterId;

    .line 382
    invoke-virtual {v0}, Lcom/dexcom/cgm/model/TransmitterId;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 384
    :cond_c
    const-class v2, Lcom/dexcom/cgm/model/enums/AlgorithmState;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 386
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/model/enums/AlgorithmState;

    .line 387
    invoke-virtual {v0}, Lcom/dexcom/cgm/model/enums/AlgorithmState;->getValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 389
    :cond_d
    const-class v2, Lcom/dexcom/cgm/model/enums/MeterEntryType;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 391
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/model/enums/MeterEntryType;

    .line 392
    invoke-virtual {v0}, Lcom/dexcom/cgm/model/enums/MeterEntryType;->getStringifiedMeterEntryType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 394
    :cond_e
    const-class v2, Lcom/dexcom/cgm/model/enums/SessionLogType;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 396
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/model/enums/SessionLogType;

    .line 397
    invoke-virtual {v0}, Lcom/dexcom/cgm/model/enums/SessionLogType;->getSessionLogType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 399
    :cond_f
    const-class v2, Lcom/dexcom/cgm/model/enums/AlertSound;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 401
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/model/enums/AlertSound;

    .line 402
    invoke-virtual {v0}, Lcom/dexcom/cgm/model/enums/AlertSound;->getAlertSoundString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 404
    :cond_10
    const-class v2, Lcom/dexcom/cgm/model/enums/AlertState;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 406
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/model/enums/AlertState;

    .line 407
    invoke-virtual {v0}, Lcom/dexcom/cgm/model/enums/AlertState;->getAlertStateName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 409
    :cond_11
    const-class v2, Lcom/dexcom/cgm/model/enums/UserEventType;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 411
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/model/enums/UserEventType;

    .line 412
    invoke-virtual {v0}, Lcom/dexcom/cgm/model/enums/UserEventType;->getUserEventType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 414
    :cond_12
    const-class v2, Lcom/dexcom/cgm/model/enums/UserEventSubType;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 416
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/model/enums/UserEventSubType;

    .line 417
    invoke-virtual {v0}, Lcom/dexcom/cgm/model/enums/UserEventSubType;->getEventSubType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 419
    :cond_13
    const-class v2, Lcom/dexcom/cgm/model/enums/TechSupportActivityType;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 422
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/model/enums/TechSupportActivityType;

    .line 423
    invoke-virtual {v0}, Lcom/dexcom/cgm/model/enums/TechSupportActivityType;->getActivityType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 425
    :cond_14
    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 427
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Enum;

    .line 428
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 432
    :cond_15
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Developer error: Field \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' had a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/dexcom/cgm/model/DatabaseColumn;

    .line 433
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " annotation attached to it, but the field\'s type (\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 435
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\') was unrecognized by "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/dexcom/platform_database/database/DatabaseRecordTransformer;

    .line 436
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 437
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
.end method

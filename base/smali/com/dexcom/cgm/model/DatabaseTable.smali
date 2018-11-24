.class public interface abstract annotation Lcom/dexcom/cgm/model/DatabaseTable;
.super Ljava/lang/Object;
.source "DatabaseTable.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/dexcom/cgm/model/DatabaseTable;
        createVersion = 0x1
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# virtual methods
.method public abstract createVersion()I
.end method

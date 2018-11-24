.class Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "NavigationMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Landroid/support/design/internal/NavigationMenuPresenter$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final STATE_ACTION_VIEWS:Ljava/lang/String; = "android:menu:action_views"

.field private static final STATE_CHECKED_ITEM:Ljava/lang/String; = "android:menu:checked"

.field private static final VIEW_TYPE_HEADER:I = 0x3

.field private static final VIEW_TYPE_NORMAL:I = 0x0

.field private static final VIEW_TYPE_SEPARATOR:I = 0x2

.field private static final VIEW_TYPE_SUBHEADER:I = 0x1


# instance fields
.field private mCheckedItem:Landroid/support/v7/internal/view/menu/MenuItemImpl;

.field private final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private mTransparentIcon:Landroid/graphics/drawable/ColorDrawable;

.field private mUpdateSuspended:Z

.field final synthetic this$0:Landroid/support/design/internal/NavigationMenuPresenter;


# direct methods
.method constructor <init>(Landroid/support/design/internal/NavigationMenuPresenter;)V
    .locals 1

    .prologue
    .line 325
    iput-object p1, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Landroid/support/design/internal/NavigationMenuPresenter;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 320
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mItems:Ljava/util/ArrayList;

    .line 326
    invoke-direct {p0}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->prepareMenuItems()V

    .line 327
    return-void
.end method

.method private appendTransparentIconIfMissing(II)V
    .locals 3

    .prologue
    .line 498
    :goto_0
    if-ge p1, p2, :cond_2

    .line 499
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    .line 500
    invoke-virtual {v0}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;->getMenuItem()Landroid/support/v7/internal/view/menu/MenuItemImpl;

    move-result-object v0

    .line 501
    invoke-interface {v0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_1

    .line 502
    iget-object v1, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mTransparentIcon:Landroid/graphics/drawable/ColorDrawable;

    if-nez v1, :cond_0

    .line 503
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const v2, 0x106000d

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v1, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mTransparentIcon:Landroid/graphics/drawable/ColorDrawable;

    .line 505
    :cond_0
    iget-object v1, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mTransparentIcon:Landroid/graphics/drawable/ColorDrawable;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 498
    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 508
    :cond_2
    return-void
.end method

.method private prepareMenuItems()V
    .locals 15

    .prologue
    .line 427
    iget-boolean v0, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mUpdateSuspended:Z

    if-eqz v0, :cond_0

    .line 495
    :goto_0
    return-void

    .line 430
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mUpdateSuspended:Z

    .line 431
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 432
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mItems:Ljava/util/ArrayList;

    new-instance v1, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuHeaderItem;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuHeaderItem;-><init>(Landroid/support/design/internal/NavigationMenuPresenter$1;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 434
    const/4 v5, -0x1

    .line 435
    const/4 v4, 0x0

    .line 436
    const/4 v3, 0x0

    .line 437
    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Landroid/support/design/internal/NavigationMenuPresenter;

    invoke-static {v1}, Landroid/support/design/internal/NavigationMenuPresenter;->access$000(Landroid/support/design/internal/NavigationMenuPresenter;)Landroid/support/v7/internal/view/menu/MenuBuilder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/internal/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v7, v0

    :goto_1
    if-ge v7, v8, :cond_f

    .line 438
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Landroid/support/design/internal/NavigationMenuPresenter;

    invoke-static {v0}, Landroid/support/design/internal/NavigationMenuPresenter;->access$000(Landroid/support/design/internal/NavigationMenuPresenter;)Landroid/support/v7/internal/view/menu/MenuBuilder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/view/menu/MenuItemImpl;

    .line 439
    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 440
    invoke-virtual {p0, v0}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->setCheckedItem(Landroid/support/v7/internal/view/menu/MenuItemImpl;)V

    .line 442
    :cond_1
    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 443
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->setExclusiveCheckable(Z)V

    .line 445
    :cond_2
    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 446
    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v9

    .line 447
    invoke-interface {v9}, Landroid/view/SubMenu;->hasVisibleItems()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 448
    if-eqz v7, :cond_3

    .line 449
    iget-object v1, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mItems:Ljava/util/ArrayList;

    new-instance v2, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuSeparatorItem;

    iget-object v6, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Landroid/support/design/internal/NavigationMenuPresenter;

    invoke-static {v6}, Landroid/support/design/internal/NavigationMenuPresenter;->access$1100(Landroid/support/design/internal/NavigationMenuPresenter;)I

    move-result v6

    const/4 v10, 0x0

    invoke-direct {v2, v6, v10}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuSeparatorItem;-><init>(II)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 451
    :cond_3
    iget-object v1, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mItems:Ljava/util/ArrayList;

    new-instance v2, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    const/4 v6, 0x0

    invoke-direct {v2, v0, v6}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;-><init>(Landroid/support/v7/internal/view/menu/MenuItemImpl;Landroid/support/design/internal/NavigationMenuPresenter$1;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 452
    const/4 v2, 0x0

    .line 453
    iget-object v1, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 454
    const/4 v1, 0x0

    invoke-interface {v9}, Landroid/view/SubMenu;->size()I

    move-result v11

    move v6, v1

    :goto_2
    if-ge v6, v11, :cond_8

    .line 455
    invoke-interface {v9, v6}, Landroid/view/SubMenu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    check-cast v1, Landroid/support/v7/internal/view/menu/MenuItemImpl;

    .line 456
    invoke-virtual {v1}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->isVisible()Z

    move-result v12

    if-eqz v12, :cond_7

    .line 457
    if-nez v2, :cond_4

    invoke-virtual {v1}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    if-eqz v12, :cond_4

    .line 458
    const/4 v2, 0x1

    .line 460
    :cond_4
    invoke-virtual {v1}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 461
    const/4 v12, 0x0

    invoke-virtual {v1, v12}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->setExclusiveCheckable(Z)V

    .line 463
    :cond_5
    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->isChecked()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 464
    invoke-virtual {p0, v0}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->setCheckedItem(Landroid/support/v7/internal/view/menu/MenuItemImpl;)V

    .line 466
    :cond_6
    iget-object v12, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mItems:Ljava/util/ArrayList;

    new-instance v13, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    const/4 v14, 0x0

    invoke-direct {v13, v1, v14}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;-><init>(Landroid/support/v7/internal/view/menu/MenuItemImpl;Landroid/support/design/internal/NavigationMenuPresenter$1;)V

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 454
    :cond_7
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto :goto_2

    .line 469
    :cond_8
    if-eqz v2, :cond_9

    .line 470
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {p0, v10, v0}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->appendTransparentIconIfMissing(II)V

    :cond_9
    move v0, v3

    move v1, v4

    move v2, v5

    .line 437
    :goto_3
    add-int/lit8 v3, v7, 0x1

    move v7, v3

    move v4, v1

    move v5, v2

    move v3, v0

    goto/16 :goto_1

    .line 474
    :cond_a
    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v6

    .line 475
    if-eq v6, v5, :cond_d

    .line 476
    iget-object v1, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 477
    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_c

    const/4 v3, 0x1

    .line 478
    :goto_4
    if-eqz v7, :cond_e

    .line 479
    add-int/lit8 v4, v4, 0x1

    .line 480
    iget-object v1, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mItems:Ljava/util/ArrayList;

    new-instance v2, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuSeparatorItem;

    iget-object v5, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Landroid/support/design/internal/NavigationMenuPresenter;

    invoke-static {v5}, Landroid/support/design/internal/NavigationMenuPresenter;->access$1100(Landroid/support/design/internal/NavigationMenuPresenter;)I

    move-result v5

    iget-object v9, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Landroid/support/design/internal/NavigationMenuPresenter;

    invoke-static {v9}, Landroid/support/design/internal/NavigationMenuPresenter;->access$1100(Landroid/support/design/internal/NavigationMenuPresenter;)I

    move-result v9

    invoke-direct {v2, v5, v9}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuSeparatorItem;-><init>(II)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v1, v3

    move v2, v4

    .line 487
    :goto_5
    if-eqz v1, :cond_b

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-nez v3, :cond_b

    .line 488
    const v3, 0x106000d

    invoke-virtual {v0, v3}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->setIcon(I)Landroid/view/MenuItem;

    .line 490
    :cond_b
    iget-object v3, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mItems:Ljava/util/ArrayList;

    new-instance v4, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v5}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;-><init>(Landroid/support/v7/internal/view/menu/MenuItemImpl;Landroid/support/design/internal/NavigationMenuPresenter$1;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v1

    move v1, v2

    move v2, v6

    .line 491
    goto :goto_3

    .line 477
    :cond_c
    const/4 v3, 0x0

    goto :goto_4

    .line 483
    :cond_d
    if-nez v3, :cond_e

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 484
    const/4 v3, 0x1

    .line 485
    iget-object v1, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {p0, v4, v1}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->appendTransparentIconIfMissing(II)V

    :cond_e
    move v1, v3

    move v2, v4

    goto :goto_5

    .line 494
    :cond_f
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mUpdateSuspended:Z

    goto/16 :goto_0
.end method


# virtual methods
.method public createInstanceState()Landroid/os/Bundle;
    .locals 6

    .prologue
    .line 522
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 523
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mCheckedItem:Landroid/support/v7/internal/view/menu/MenuItemImpl;

    if-eqz v0, :cond_0

    .line 524
    const-string v0, "android:menu:checked"

    iget-object v2, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mCheckedItem:Landroid/support/v7/internal/view/menu/MenuItemImpl;

    invoke-virtual {v2}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->getItemId()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 527
    :cond_0
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 528
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuItem;

    .line 529
    instance-of v4, v0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    if-eqz v4, :cond_1

    .line 530
    check-cast v0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    invoke-virtual {v0}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;->getMenuItem()Landroid/support/v7/internal/view/menu/MenuItemImpl;

    move-result-object v4

    .line 531
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->getActionView()Landroid/view/View;

    move-result-object v0

    .line 532
    :goto_1
    if-eqz v0, :cond_1

    .line 533
    new-instance v5, Landroid/support/design/internal/ParcelableSparseArray;

    invoke-direct {v5}, Landroid/support/design/internal/ParcelableSparseArray;-><init>()V

    .line 534
    invoke-virtual {v0, v5}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 535
    invoke-virtual {v4}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->getItemId()I

    move-result v0

    invoke-virtual {v2, v0, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 531
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 539
    :cond_3
    const-string v0, "android:menu:action_views"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 540
    return-object v1
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 331
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .prologue
    .line 341
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuItem;

    .line 342
    instance-of v1, v0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuSeparatorItem;

    if-eqz v1, :cond_0

    .line 343
    const/4 v0, 0x2

    .line 351
    :goto_0
    return v0

    .line 344
    :cond_0
    instance-of v1, v0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuHeaderItem;

    if-eqz v1, :cond_1

    .line 345
    const/4 v0, 0x3

    goto :goto_0

    .line 346
    :cond_1
    instance-of v1, v0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    if-eqz v1, :cond_3

    .line 347
    check-cast v0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    .line 348
    invoke-virtual {v0}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;->getMenuItem()Landroid/support/v7/internal/view/menu/MenuItemImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 349
    const/4 v0, 0x1

    goto :goto_0

    .line 351
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 354
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unknown item type."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onBindViewHolder(Landroid/support/design/internal/NavigationMenuPresenter$ViewHolder;I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 374
    invoke-virtual {p0, p2}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->getItemViewType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 408
    :goto_0
    return-void

    .line 376
    :pswitch_0
    iget-object v0, p1, Landroid/support/design/internal/NavigationMenuPresenter$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Landroid/support/design/internal/NavigationMenuItemView;

    .line 377
    iget-object v1, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Landroid/support/design/internal/NavigationMenuPresenter;

    invoke-static {v1}, Landroid/support/design/internal/NavigationMenuPresenter;->access$500(Landroid/support/design/internal/NavigationMenuPresenter;)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/design/internal/NavigationMenuItemView;->setIconTintList(Landroid/content/res/ColorStateList;)V

    .line 378
    iget-object v1, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Landroid/support/design/internal/NavigationMenuPresenter;

    invoke-static {v1}, Landroid/support/design/internal/NavigationMenuPresenter;->access$600(Landroid/support/design/internal/NavigationMenuPresenter;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 379
    invoke-virtual {v0}, Landroid/support/design/internal/NavigationMenuItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Landroid/support/design/internal/NavigationMenuPresenter;

    invoke-static {v2}, Landroid/support/design/internal/NavigationMenuPresenter;->access$700(Landroid/support/design/internal/NavigationMenuPresenter;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/support/design/internal/NavigationMenuItemView;->setTextAppearance(Landroid/content/Context;I)V

    .line 381
    :cond_0
    iget-object v1, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Landroid/support/design/internal/NavigationMenuPresenter;

    invoke-static {v1}, Landroid/support/design/internal/NavigationMenuPresenter;->access$800(Landroid/support/design/internal/NavigationMenuPresenter;)Landroid/content/res/ColorStateList;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 382
    iget-object v1, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Landroid/support/design/internal/NavigationMenuPresenter;

    invoke-static {v1}, Landroid/support/design/internal/NavigationMenuPresenter;->access$800(Landroid/support/design/internal/NavigationMenuPresenter;)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/design/internal/NavigationMenuItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 384
    :cond_1
    iget-object v1, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Landroid/support/design/internal/NavigationMenuPresenter;

    invoke-static {v1}, Landroid/support/design/internal/NavigationMenuPresenter;->access$900(Landroid/support/design/internal/NavigationMenuPresenter;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Landroid/support/design/internal/NavigationMenuPresenter;

    invoke-static {v1}, Landroid/support/design/internal/NavigationMenuPresenter;->access$900(Landroid/support/design/internal/NavigationMenuPresenter;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/support/design/internal/NavigationMenuItemView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 386
    iget-object v1, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    .line 387
    invoke-virtual {v1}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;->getMenuItem()Landroid/support/v7/internal/view/menu/MenuItemImpl;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/support/design/internal/NavigationMenuItemView;->initialize(Landroid/support/v7/internal/view/menu/MenuItemImpl;I)V

    goto :goto_0

    .line 384
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 391
    :pswitch_1
    iget-object v0, p1, Landroid/support/design/internal/NavigationMenuPresenter$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    .line 392
    iget-object v1, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    .line 393
    invoke-virtual {v1}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;->getMenuItem()Landroid/support/v7/internal/view/menu/MenuItemImpl;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 397
    :pswitch_2
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuSeparatorItem;

    .line 399
    iget-object v1, p1, Landroid/support/design/internal/NavigationMenuPresenter$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuSeparatorItem;->getPaddingTop()I

    move-result v2

    invoke-virtual {v0}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuSeparatorItem;->getPaddingBottom()I

    move-result v0

    invoke-virtual {v1, v3, v2, v3, v0}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_0

    .line 374
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 310
    check-cast p1, Landroid/support/design/internal/NavigationMenuPresenter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->onBindViewHolder(Landroid/support/design/internal/NavigationMenuPresenter$ViewHolder;I)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/design/internal/NavigationMenuPresenter$ViewHolder;
    .locals 3

    .prologue
    .line 359
    packed-switch p2, :pswitch_data_0

    .line 369
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 361
    :pswitch_0
    new-instance v0, Landroid/support/design/internal/NavigationMenuPresenter$NormalViewHolder;

    iget-object v1, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Landroid/support/design/internal/NavigationMenuPresenter;

    invoke-static {v1}, Landroid/support/design/internal/NavigationMenuPresenter;->access$200(Landroid/support/design/internal/NavigationMenuPresenter;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v2, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Landroid/support/design/internal/NavigationMenuPresenter;

    invoke-static {v2}, Landroid/support/design/internal/NavigationMenuPresenter;->access$300(Landroid/support/design/internal/NavigationMenuPresenter;)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Landroid/support/design/internal/NavigationMenuPresenter$NormalViewHolder;-><init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 363
    :pswitch_1
    new-instance v0, Landroid/support/design/internal/NavigationMenuPresenter$SubheaderViewHolder;

    iget-object v1, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Landroid/support/design/internal/NavigationMenuPresenter;

    invoke-static {v1}, Landroid/support/design/internal/NavigationMenuPresenter;->access$200(Landroid/support/design/internal/NavigationMenuPresenter;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/design/internal/NavigationMenuPresenter$SubheaderViewHolder;-><init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 365
    :pswitch_2
    new-instance v0, Landroid/support/design/internal/NavigationMenuPresenter$SeparatorViewHolder;

    iget-object v1, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Landroid/support/design/internal/NavigationMenuPresenter;

    invoke-static {v1}, Landroid/support/design/internal/NavigationMenuPresenter;->access$200(Landroid/support/design/internal/NavigationMenuPresenter;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/design/internal/NavigationMenuPresenter$SeparatorViewHolder;-><init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 367
    :pswitch_3
    new-instance v0, Landroid/support/design/internal/NavigationMenuPresenter$HeaderViewHolder;

    iget-object v1, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Landroid/support/design/internal/NavigationMenuPresenter;

    invoke-static {v1}, Landroid/support/design/internal/NavigationMenuPresenter;->access$400(Landroid/support/design/internal/NavigationMenuPresenter;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/design/internal/NavigationMenuPresenter$HeaderViewHolder;-><init>(Landroid/view/View;)V

    goto :goto_0

    .line 359
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 310
    invoke-virtual {p0, p1, p2}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/design/internal/NavigationMenuPresenter$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onViewRecycled(Landroid/support/design/internal/NavigationMenuPresenter$ViewHolder;)V
    .locals 1

    .prologue
    .line 412
    instance-of v0, p1, Landroid/support/design/internal/NavigationMenuPresenter$NormalViewHolder;

    if-eqz v0, :cond_0

    .line 413
    iget-object v0, p1, Landroid/support/design/internal/NavigationMenuPresenter$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Landroid/support/design/internal/NavigationMenuItemView;

    invoke-virtual {v0}, Landroid/support/design/internal/NavigationMenuItemView;->recycle()V

    .line 415
    :cond_0
    return-void
.end method

.method public bridge synthetic onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .prologue
    .line 310
    check-cast p1, Landroid/support/design/internal/NavigationMenuPresenter$ViewHolder;

    invoke-virtual {p0, p1}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->onViewRecycled(Landroid/support/design/internal/NavigationMenuPresenter$ViewHolder;)V

    return-void
.end method

.method public restoreInstanceState(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 544
    const-string v0, "android:menu:checked"

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 545
    if-eqz v1, :cond_2

    .line 546
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mUpdateSuspended:Z

    .line 547
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuItem;

    .line 548
    instance-of v3, v0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    if-eqz v3, :cond_0

    .line 549
    check-cast v0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    invoke-virtual {v0}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;->getMenuItem()Landroid/support/v7/internal/view/menu/MenuItemImpl;

    move-result-object v0

    .line 550
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->getItemId()I

    move-result v3

    if-ne v3, v1, :cond_0

    .line 551
    invoke-virtual {p0, v0}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->setCheckedItem(Landroid/support/v7/internal/view/menu/MenuItemImpl;)V

    .line 556
    :cond_1
    iput-boolean v4, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mUpdateSuspended:Z

    .line 557
    invoke-direct {p0}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->prepareMenuItems()V

    .line 560
    :cond_2
    const-string v0, "android:menu:action_views"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v2

    .line 562
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuItem;

    .line 563
    instance-of v1, v0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    if-eqz v1, :cond_3

    .line 564
    check-cast v0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    invoke-virtual {v0}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;->getMenuItem()Landroid/support/v7/internal/view/menu/MenuItemImpl;

    move-result-object v4

    .line 565
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->getActionView()Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    .line 566
    :goto_1
    if-eqz v1, :cond_3

    .line 567
    invoke-virtual {v4}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->getItemId()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    goto :goto_0

    .line 565
    :cond_4
    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_1

    .line 571
    :cond_5
    return-void
.end method

.method public setCheckedItem(Landroid/support/v7/internal/view/menu/MenuItemImpl;)V
    .locals 2

    .prologue
    .line 511
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mCheckedItem:Landroid/support/v7/internal/view/menu/MenuItemImpl;

    if-eq v0, p1, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 519
    :cond_0
    :goto_0
    return-void

    .line 514
    :cond_1
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mCheckedItem:Landroid/support/v7/internal/view/menu/MenuItemImpl;

    if-eqz v0, :cond_2

    .line 515
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mCheckedItem:Landroid/support/v7/internal/view/menu/MenuItemImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->setChecked(Z)Landroid/view/MenuItem;

    .line 517
    :cond_2
    iput-object p1, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mCheckedItem:Landroid/support/v7/internal/view/menu/MenuItemImpl;

    .line 518
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public setUpdateSuspended(Z)V
    .locals 0

    .prologue
    .line 574
    iput-boolean p1, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mUpdateSuspended:Z

    .line 575
    return-void
.end method

.method public update()V
    .locals 0

    .prologue
    .line 418
    invoke-direct {p0}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->prepareMenuItems()V

    .line 419
    invoke-virtual {p0}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->notifyDataSetChanged()V

    .line 420
    return-void
.end method

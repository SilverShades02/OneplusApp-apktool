.class Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ManageApplications.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/manageapplications/ManageApplications;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FilterSpinnerAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mFilterOptions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/applications/manageapplications/AppFilterItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;


# direct methods
.method public constructor <init>(Lcom/android/settings/applications/manageapplications/ManageApplications;)V
    .locals 2
    .param p1, "manageApplications"    # Lcom/android/settings/applications/manageapplications/ManageApplications;

    .line 874
    invoke-virtual {p1}, Lcom/android/settings/applications/manageapplications/ManageApplications;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0d0091

    invoke-direct {p0, v0, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 871
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;->mFilterOptions:Ljava/util/ArrayList;

    .line 875
    invoke-virtual {p1}, Lcom/android/settings/applications/manageapplications/ManageApplications;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;->mContext:Landroid/content/Context;

    .line 876
    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    .line 877
    const v0, 0x1090009

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;->setDropDownViewResource(I)V

    .line 878
    return-void
.end method


# virtual methods
.method public disableFilter(I)V
    .locals 11
    .param p1, "filterType"    # I
        .annotation build Lcom/android/settings/applications/manageapplications/AppFilterRegistry$FilterType;
        .end annotation
    .end param

    .line 915
    invoke-static {}, Lcom/android/settings/applications/manageapplications/AppFilterRegistry;->getInstance()Lcom/android/settings/applications/manageapplications/AppFilterRegistry;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/settings/applications/manageapplications/AppFilterRegistry;->get(I)Lcom/android/settings/applications/manageapplications/AppFilterItem;

    move-result-object v0

    .line 916
    .local v0, "filter":Lcom/android/settings/applications/manageapplications/AppFilterItem;
    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;->mFilterOptions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 917
    return-void

    .line 919
    :cond_0
    sget-boolean v1, Lcom/android/settings/applications/manageapplications/ManageApplications;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 920
    const-string v1, "ManageApplications"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Disabling filter "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    :cond_1
    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;->mFilterOptions:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 923
    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-static {v1}, Lcom/android/settings/applications/manageapplications/ManageApplications;->access$400(Lcom/android/settings/applications/manageapplications/ManageApplications;)Landroid/view/View;

    move-result-object v1

    .line 924
    iget-object v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;->mFilterOptions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-le v2, v3, :cond_2

    .line 923
    move v2, v4

    goto :goto_0

    .line 924
    :cond_2
    const/16 v2, 0x8

    .line 923
    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 925
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;->notifyDataSetChanged()V

    .line 926
    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-static {v1}, Lcom/android/settings/applications/manageapplications/ManageApplications;->access$600(Lcom/android/settings/applications/manageapplications/ManageApplications;)Lcom/android/settings/applications/manageapplications/AppFilterItem;

    move-result-object v1

    if-ne v1, v0, :cond_4

    .line 927
    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;->mFilterOptions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 928
    sget-boolean v1, Lcom/android/settings/applications/manageapplications/ManageApplications;->DEBUG:Z

    if-eqz v1, :cond_3

    .line 929
    const-string v1, "ManageApplications"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Auto selecting filter "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;->mFilterOptions:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    :cond_3
    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-static {v1}, Lcom/android/settings/applications/manageapplications/ManageApplications;->access$500(Lcom/android/settings/applications/manageapplications/ManageApplications;)Landroid/widget/Spinner;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/Spinner;->setSelection(I)V

    .line 932
    iget-object v5, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    invoke-virtual/range {v5 .. v10}, Lcom/android/settings/applications/manageapplications/ManageApplications;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 935
    :cond_4
    return-void
.end method

.method public enableFilter(I)V
    .locals 10
    .param p1, "filterType"    # I
        .annotation build Lcom/android/settings/applications/manageapplications/AppFilterRegistry$FilterType;
        .end annotation
    .end param

    .line 893
    invoke-static {}, Lcom/android/settings/applications/manageapplications/AppFilterRegistry;->getInstance()Lcom/android/settings/applications/manageapplications/AppFilterRegistry;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/settings/applications/manageapplications/AppFilterRegistry;->get(I)Lcom/android/settings/applications/manageapplications/AppFilterItem;

    move-result-object v0

    .line 894
    .local v0, "filter":Lcom/android/settings/applications/manageapplications/AppFilterItem;
    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;->mFilterOptions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 895
    return-void

    .line 897
    :cond_0
    sget-boolean v1, Lcom/android/settings/applications/manageapplications/ManageApplications;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 898
    const-string v1, "ManageApplications"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Enabling filter "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    :cond_1
    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;->mFilterOptions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 901
    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;->mFilterOptions:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 902
    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-static {v1}, Lcom/android/settings/applications/manageapplications/ManageApplications;->access$400(Lcom/android/settings/applications/manageapplications/ManageApplications;)Landroid/view/View;

    move-result-object v1

    .line 903
    iget-object v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;->mFilterOptions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-le v2, v4, :cond_2

    .line 902
    move v2, v3

    goto :goto_0

    .line 903
    :cond_2
    const/16 v2, 0x8

    .line 902
    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 904
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;->notifyDataSetChanged()V

    .line 905
    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;->mFilterOptions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v4, :cond_4

    .line 906
    sget-boolean v1, Lcom/android/settings/applications/manageapplications/ManageApplications;->DEBUG:Z

    if-eqz v1, :cond_3

    .line 907
    const-string v1, "ManageApplications"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Auto selecting filter "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    :cond_3
    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-static {v1}, Lcom/android/settings/applications/manageapplications/ManageApplications;->access$500(Lcom/android/settings/applications/manageapplications/ManageApplications;)Landroid/widget/Spinner;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 910
    iget-object v4, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    invoke-virtual/range {v4 .. v9}, Lcom/android/settings/applications/manageapplications/ManageApplications;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 912
    :cond_4
    return-void
.end method

.method public getCount()I
    .locals 1

    .line 939
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;->mFilterOptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getFilter(I)Lcom/android/settings/applications/manageapplications/AppFilterItem;
    .locals 1
    .param p1, "position"    # I

    .line 881
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;->mFilterOptions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/manageapplications/AppFilterItem;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "position"    # I

    .line 944
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;->mFilterOptions:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/manageapplications/AppFilterItem;

    invoke-virtual {v1}, Lcom/android/settings/applications/manageapplications/AppFilterItem;->getTitle()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 864
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;->getItem(I)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public setFilterEnabled(IZ)V
    .locals 0
    .param p1, "filter"    # I
        .annotation build Lcom/android/settings/applications/manageapplications/AppFilterRegistry$FilterType;
        .end annotation
    .end param
    .param p2, "enabled"    # Z

    .line 885
    if-eqz p2, :cond_0

    .line 886
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;->enableFilter(I)V

    goto :goto_0

    .line 888
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;->disableFilter(I)V

    .line 890
    :goto_0
    return-void
.end method

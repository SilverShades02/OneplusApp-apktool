.class public Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "AppActionButtonPreferenceController.java"

# interfaces
.implements Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$Callback;


# static fields
.field private static final KEY_ACTION_BUTTONS:Ljava/lang/String; = "action_buttons"

.field private static final KEY_GOOGLE__INPUTMETHOD:Ljava/lang/String; = "com.google.android.inputmethod.latin"

.field private static final KEY_LATIN_INPUTMETHOD:Ljava/lang/String; = "com.android.inputmethod.latin"

.field private static final TAG:Ljava/lang/String; = "AppActionButtonControl"


# instance fields
.field mActionButtons:Lcom/android/settings/widget/ActionButtonPreference;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final mApplicationFeatureProvider:Lcom/android/settings/applications/ApplicationFeatureProvider;

.field private final mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field private final mHomePackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageName:Ljava/lang/String;

.field private final mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mUserId:I

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;
    .param p3, "packageName"    # Ljava/lang/String;

    .line 91
    const-string v0, "action_buttons"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 67
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;->mHomePackages:Ljava/util/HashSet;

    .line 79
    new-instance v0, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController$1;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController$1;-><init>(Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;)V

    iput-object v0, p0, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;->mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

    .line 92
    iput-object p2, p0, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    .line 93
    iput-object p3, p0, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;->mPackageName:Ljava/lang/String;

    .line 94
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    iput v0, p0, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;->mUserId:I

    .line 95
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    .line 96
    invoke-virtual {v0, p1}, Lcom/android/settings/overlay/FeatureFactory;->getApplicationFeatureProvider(Landroid/content/Context;)Lcom/android/settings/applications/ApplicationFeatureProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;->mApplicationFeatureProvider:Lcom/android/settings/applications/ApplicationFeatureProvider;

    .line 97
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;)Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;

    .line 57
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;
    .param p1, "x1"    # Z

    .line 57
    invoke-direct {p0, p1}, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;->updateForceStopButton(Z)V

    return-void
.end method

.method public static synthetic lambda$initUninstallButtons$0(Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 231
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    invoke-virtual {v0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->handleUninstallButtonClick()V

    return-void
.end method

.method public static synthetic lambda$updateForceStopButton$1(Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 290
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    invoke-virtual {v0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->handleForceStopButtonClick()V

    return-void
.end method

.method private signaturesMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "pkg1"    # Ljava/lang/String;
    .param p2, "pkg2"    # Ljava/lang/String;

    .line 330
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 332
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1, p2}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    nop

    :cond_0
    return v0

    .line 333
    :catch_0
    move-exception v1

    .line 338
    :cond_1
    return v0
.end method

.method private updateForceStopButton(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .line 285
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;->mContext:Landroid/content/Context;

    const-string v1, "no_control_apps"

    iget v2, p0, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;->mUserId:I

    invoke-static {v0, v1, v2}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    .line 287
    .local v0, "disallowedBySystem":Z
    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;->mActionButtons:Lcom/android/settings/widget/ActionButtonPreference;

    .line 288
    if-eqz v0, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    move v2, p1

    :goto_0
    invoke-virtual {v1, v2}, Lcom/android/settings/widget/ActionButtonPreference;->setButton2Enabled(Z)Lcom/android/settings/widget/ActionButtonPreference;

    move-result-object v1

    .line 290
    if-eqz v0, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    new-instance v2, Lcom/android/settings/applications/appinfo/-$$Lambda$AppActionButtonPreferenceController$oIXjjHquqzr1XuPAGEk55khGTJ0;

    invoke-direct {v2, p0}, Lcom/android/settings/applications/appinfo/-$$Lambda$AppActionButtonPreferenceController$oIXjjHquqzr1XuPAGEk55khGTJ0;-><init>(Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;)V

    .line 289
    :goto_1
    invoke-virtual {v1, v2}, Lcom/android/settings/widget/ActionButtonPreference;->setButton2OnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/settings/widget/ActionButtonPreference;

    .line 291
    return-void
.end method


# virtual methods
.method checkForceStop(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Landroid/content/pm/PackageInfo;)V
    .locals 17
    .param p1, "appEntry"    # Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    .param p2, "packageInfo"    # Landroid/content/pm/PackageInfo;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 294
    move-object/from16 v2, p2

    iget-object v3, v0, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 296
    const-string v3, "AppActionButtonControl"

    const-string v5, "User can\'t force stop device admin"

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    invoke-direct {v0, v4}, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;->updateForceStopButton(Z)V

    goto/16 :goto_0

    .line 298
    :cond_0
    iget-object v3, v0, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;->mPm:Landroid/content/pm/PackageManager;

    iget-object v5, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v6, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 299
    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 298
    invoke-virtual {v3, v5, v6}, Landroid/content/pm/PackageManager;->isPackageStateProtected(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 300
    const-string v3, "AppActionButtonControl"

    const-string v5, "User can\'t force stop protected packages"

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    invoke-direct {v0, v4}, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;->updateForceStopButton(Z)V

    goto/16 :goto_0

    .line 302
    :cond_1
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v3}, Lcom/android/settingslib/applications/AppUtils;->isInstant(Landroid/content/pm/ApplicationInfo;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 303
    invoke-direct {v0, v4}, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;->updateForceStopButton(Z)V

    .line 304
    iget-object v3, v0, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;->mActionButtons:Lcom/android/settings/widget/ActionButtonPreference;

    invoke-virtual {v3, v4}, Lcom/android/settings/widget/ActionButtonPreference;->setButton2Visible(Z)Lcom/android/settings/widget/ActionButtonPreference;

    goto/16 :goto_0

    .line 305
    :cond_2
    iget-object v3, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v5, 0x200000

    and-int/2addr v3, v5

    const/4 v5, 0x1

    if-nez v3, :cond_3

    .line 308
    const-string v3, "AppActionButtonControl"

    const-string v4, "App is not explicitly stopped"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    invoke-direct {v0, v5}, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;->updateForceStopButton(Z)V

    goto/16 :goto_0

    .line 311
    :cond_3
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.QUERY_PACKAGE_RESTART"

    const-string v7, "package"

    iget-object v8, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v9, 0x0

    .line 312
    invoke-static {v7, v8, v9}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v3, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 313
    .local v3, "intent":Landroid/content/Intent;
    const-string v6, "android.intent.extra.PACKAGES"

    new-array v5, v5, [Ljava/lang/String;

    iget-object v7, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    aput-object v7, v5, v4

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 314
    const-string v4, "android.intent.extra.UID"

    iget-object v5, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 315
    const-string v4, "android.intent.extra.user_handle"

    iget-object v5, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 316
    const-string v4, "AppActionButtonControl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Sending broadcast to query restart status for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    iget-object v4, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    const/16 v5, 0x3e7

    if-ne v4, v5, :cond_4

    .line 320
    iget-object v8, v0, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;->mContext:Landroid/content/Context;

    new-instance v10, Landroid/os/UserHandle;

    invoke-direct {v10, v5}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v11, 0x0

    iget-object v12, v0, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;->mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v9, v3

    invoke-virtual/range {v8 .. v16}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 323
    :cond_4
    iget-object v8, v0, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;->mContext:Landroid/content/Context;

    sget-object v10, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v11, 0x0

    iget-object v12, v0, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;->mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v9, v3

    invoke-virtual/range {v8 .. v16}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 327
    .end local v3    # "intent":Landroid/content/Intent;
    :goto_0
    return-void
.end method

.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 2
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .line 107
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 108
    const-string v0, "action_buttons"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/ActionButtonPreference;

    .line 109
    const v1, 0x7f12069e

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ActionButtonPreference;->setButton2Text(I)Lcom/android/settings/widget/ActionButtonPreference;

    move-result-object v0

    .line 110
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ActionButtonPreference;->setButton2Positive(Z)Lcom/android/settings/widget/ActionButtonPreference;

    move-result-object v0

    .line 111
    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ActionButtonPreference;->setButton2Enabled(Z)Lcom/android/settings/widget/ActionButtonPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;->mActionButtons:Lcom/android/settings/widget/ActionButtonPreference;

    .line 112
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    invoke-virtual {v0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0}, Lcom/android/settingslib/applications/AppUtils;->isInstant(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 101
    :goto_0
    return v0
.end method

.method handleDisableable(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Landroid/content/pm/PackageInfo;)Z
    .locals 6
    .param p1, "appEntry"    # Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    .param p2, "packageInfo"    # Landroid/content/pm/PackageInfo;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 254
    const/4 v0, 0x0

    .line 259
    .local v0, "disableable":Z
    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;->mHomePackages:Ljava/util/HashSet;

    iget-object v2, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const v3, 0x7f12056b

    if-nez v1, :cond_2

    const-string v1, "com.android.inputmethod.latin"

    iget-object v4, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.google.android.inputmethod.latin"

    iget-object v4, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 260
    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;->mContext:Landroid/content/Context;

    .line 261
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v4, p0, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;->mPm:Landroid/content/pm/PackageManager;

    invoke-static {v1, v4, p2}, Lcom/android/settings/Utils;->isSystemPackage(Landroid/content/res/Resources;Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 267
    :cond_0
    iget-object v1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v1, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    const/4 v5, 0x4

    if-eq v1, v5, :cond_1

    .line 269
    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;->mActionButtons:Lcom/android/settings/widget/ActionButtonPreference;

    .line 270
    invoke-virtual {v1, v3}, Lcom/android/settings/widget/ActionButtonPreference;->setButton1Text(I)Lcom/android/settings/widget/ActionButtonPreference;

    move-result-object v1

    .line 271
    invoke-virtual {v1, v2}, Lcom/android/settings/widget/ActionButtonPreference;->setButton1Positive(Z)Lcom/android/settings/widget/ActionButtonPreference;

    .line 272
    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;->mApplicationFeatureProvider:Lcom/android/settings/applications/ApplicationFeatureProvider;

    invoke-interface {v1}, Lcom/android/settings/applications/ApplicationFeatureProvider;->getKeepEnabledPackages()Ljava/util/Set;

    move-result-object v1

    iget-object v2, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 273
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v4

    move v0, v1

    goto :goto_1

    .line 275
    :cond_1
    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;->mActionButtons:Lcom/android/settings/widget/ActionButtonPreference;

    const v2, 0x7f1205e2

    .line 276
    invoke-virtual {v1, v2}, Lcom/android/settings/widget/ActionButtonPreference;->setButton1Text(I)Lcom/android/settings/widget/ActionButtonPreference;

    move-result-object v1

    .line 277
    invoke-virtual {v1, v4}, Lcom/android/settings/widget/ActionButtonPreference;->setButton1Positive(Z)Lcom/android/settings/widget/ActionButtonPreference;

    .line 278
    const/4 v0, 0x1

    goto :goto_1

    .line 264
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;->mActionButtons:Lcom/android/settings/widget/ActionButtonPreference;

    .line 265
    invoke-virtual {v1, v3}, Lcom/android/settings/widget/ActionButtonPreference;->setButton1Text(I)Lcom/android/settings/widget/ActionButtonPreference;

    move-result-object v1

    .line 266
    invoke-virtual {v1, v2}, Lcom/android/settings/widget/ActionButtonPreference;->setButton1Positive(Z)Lcom/android/settings/widget/ActionButtonPreference;

    .line 281
    :goto_1
    return v0
.end method

.method initUninstallButtonForUserApp()Z
    .locals 5
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 237
    const/4 v0, 0x1

    .line 238
    .local v0, "enabled":Z
    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    invoke-virtual {v1}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 239
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x800000

    and-int/2addr v2, v3

    const/4 v3, 0x0

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;->mUserManager:Landroid/os/UserManager;

    .line 240
    invoke-virtual {v2}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x2

    if-lt v2, v4, :cond_0

    .line 243
    const/4 v0, 0x0

    goto :goto_0

    .line 244
    :cond_0
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v2}, Lcom/android/settingslib/applications/AppUtils;->isInstant(Landroid/content/pm/ApplicationInfo;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 245
    const/4 v0, 0x0

    .line 246
    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;->mActionButtons:Lcom/android/settings/widget/ActionButtonPreference;

    invoke-virtual {v2, v3}, Lcom/android/settings/widget/ActionButtonPreference;->setButton1Visible(Z)Lcom/android/settings/widget/ActionButtonPreference;

    .line 248
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;->mActionButtons:Lcom/android/settings/widget/ActionButtonPreference;

    const v4, 0x7f121258

    invoke-virtual {v2, v4}, Lcom/android/settings/widget/ActionButtonPreference;->setButton1Text(I)Lcom/android/settings/widget/ActionButtonPreference;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/settings/widget/ActionButtonPreference;->setButton1Positive(Z)Lcom/android/settings/widget/ActionButtonPreference;

    .line 249
    return v0
.end method

.method initUninstallButtons(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Landroid/content/pm/PackageInfo;)V
    .locals 7
    .param p1, "appEntry"    # Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    .param p2, "packageInfo"    # Landroid/content/pm/PackageInfo;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 153
    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 155
    .local v0, "isBundled":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 156
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;->handleDisableable(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Landroid/content/pm/PackageInfo;)Z

    move-result v3

    .local v3, "enabled":Z
    goto :goto_1

    .line 158
    .end local v3    # "enabled":Z
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;->initUninstallButtonForUserApp()Z

    move-result v3

    .line 162
    .restart local v3    # "enabled":Z
    :goto_1
    if-eqz v0, :cond_2

    iget-object v4, p0, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v5, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 163
    const/4 v3, 0x0

    .line 169
    :cond_2
    iget-object v4, p0, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;->mUserManager:Landroid/os/UserManager;

    iget-object v5, p0, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v6, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v4, v5, v6}, Lcom/android/settings/Utils;->isProfileOrDeviceOwner(Landroid/os/UserManager;Landroid/app/admin/DevicePolicyManager;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 170
    const/4 v3, 0x0

    .line 174
    :cond_3
    iget-object v4, p0, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/android/settings/Utils;->isDeviceProvisioningPackage(Landroid/content/res/Resources;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 175
    const/4 v3, 0x0

    .line 179
    :cond_4
    iget-object v4, p0, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v5, p0, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/app/admin/DevicePolicyManager;->isUninstallInQueue(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 180
    const/4 v3, 0x0

    .line 189
    :cond_5
    if-eqz v3, :cond_9

    iget-object v4, p0, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;->mHomePackages:Ljava/util/HashSet;

    iget-object v5, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 190
    if-eqz v0, :cond_6

    .line 191
    const/4 v3, 0x0

    goto :goto_3

    .line 193
    :cond_6
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 194
    .local v4, "homeActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    iget-object v5, p0, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v4}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v5

    .line 195
    .local v5, "currentDefaultHome":Landroid/content/ComponentName;
    if-nez v5, :cond_8

    .line 198
    iget-object v6, p0, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;->mHomePackages:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->size()I

    move-result v6

    if-le v6, v1, :cond_7

    goto :goto_2

    :cond_7
    move v1, v2

    :goto_2
    move v3, v1

    goto :goto_3

    .line 202
    :cond_8
    iget-object v2, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v1, v2

    move v3, v1

    .line 207
    .end local v4    # "homeActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    .end local v5    # "currentDefaultHome":Landroid/content/ComponentName;
    :cond_9
    :goto_3
    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;->mContext:Landroid/content/Context;

    const-string v2, "no_control_apps"

    iget v4, p0, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;->mUserId:I

    invoke-static {v1, v2, v4}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 209
    const/4 v3, 0x0

    .line 213
    :cond_a
    :try_start_0
    const-string v1, "webviewupdate"

    .line 215
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 214
    invoke-static {v1}, Landroid/webkit/IWebViewUpdateService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/webkit/IWebViewUpdateService;

    move-result-object v1

    .line 216
    .local v1, "webviewUpdateService":Landroid/webkit/IWebViewUpdateService;
    iget-object v2, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/webkit/IWebViewUpdateService;->isFallbackPackage(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_b

    .line 217
    const/4 v3, 0x0

    .line 221
    .end local v1    # "webviewUpdateService":Landroid/webkit/IWebViewUpdateService;
    :cond_b
    nop

    .line 223
    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;->mContext:Landroid/content/Context;

    const v2, 0x7f120a9e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;->mContext:Landroid/content/Context;

    const v2, 0x7f120a9f

    .line 224
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 225
    :cond_c
    const/4 v3, 0x0

    .line 228
    :cond_d
    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;->mActionButtons:Lcom/android/settings/widget/ActionButtonPreference;

    invoke-virtual {v1, v3}, Lcom/android/settings/widget/ActionButtonPreference;->setButton1Enabled(Z)Lcom/android/settings/widget/ActionButtonPreference;

    .line 229
    if-eqz v3, :cond_e

    .line 231
    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;->mActionButtons:Lcom/android/settings/widget/ActionButtonPreference;

    new-instance v2, Lcom/android/settings/applications/appinfo/-$$Lambda$AppActionButtonPreferenceController$Ww2IUjWxdICZ6sY_1SuD__XEpOY;

    invoke-direct {v2, p0}, Lcom/android/settings/applications/appinfo/-$$Lambda$AppActionButtonPreferenceController$Ww2IUjWxdICZ6sY_1SuD__XEpOY;-><init>(Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;)V

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/ActionButtonPreference;->setButton1OnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/settings/widget/ActionButtonPreference;

    .line 233
    :cond_e
    return-void

    .line 219
    :catch_0
    move-exception v1

    .line 220
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public refreshUi()V
    .locals 9

    .line 116
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;->mPm:Landroid/content/pm/PackageManager;

    if-nez v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;->mPm:Landroid/content/pm/PackageManager;

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;->mDpm:Landroid/app/admin/DevicePolicyManager;

    if-nez v0, :cond_1

    .line 120
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;->mContext:Landroid/content/Context;

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 122
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;->mUserManager:Landroid/os/UserManager;

    if-nez v0, :cond_2

    .line 123
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;->mContext:Landroid/content/Context;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;->mUserManager:Landroid/os/UserManager;

    .line 125
    :cond_2
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    invoke-virtual {v0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getAppEntry()Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object v0

    .line 126
    .local v0, "appEntry":Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    invoke-virtual {v1}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 129
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 130
    .local v2, "homeActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v3, p0, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    .line 131
    iget-object v3, p0, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;->mHomePackages:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    .line 132
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 133
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 134
    .local v4, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 135
    .local v5, "activityPkg":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;->mHomePackages:Ljava/util/HashSet;

    invoke-virtual {v6, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 138
    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 139
    .local v6, "metadata":Landroid/os/Bundle;
    if-eqz v6, :cond_3

    .line 140
    const-string v7, "android.app.home.alternate"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 141
    .local v7, "metaPkg":Ljava/lang/String;
    invoke-direct {p0, v7, v5}, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;->signaturesMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 142
    iget-object v8, p0, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;->mHomePackages:Ljava/util/HashSet;

    invoke-virtual {v8, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 132
    .end local v4    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v5    # "activityPkg":Ljava/lang/String;
    .end local v6    # "metadata":Landroid/os/Bundle;
    .end local v7    # "metaPkg":Ljava/lang/String;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 147
    .end local v3    # "i":I
    :cond_4
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;->checkForceStop(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Landroid/content/pm/PackageInfo;)V

    .line 148
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;->initUninstallButtons(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Landroid/content/pm/PackageInfo;)V

    .line 149
    return-void
.end method

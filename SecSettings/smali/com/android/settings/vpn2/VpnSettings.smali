.class public Lcom/android/settings/vpn2/VpnSettings;
.super Lcom/android/settings/RestrictedSettingsFragment;
.source "VpnSettings.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/vpn2/VpnSettings$1;,
        Lcom/android/settings/vpn2/VpnSettings$2;,
        Lcom/android/settings/vpn2/VpnSettings$3;,
        Lcom/android/settings/vpn2/VpnSettings$UpdatePreferences;
    }
.end annotation


# static fields
.field private static final VPN_REQUEST:Landroid/net/NetworkRequest;


# instance fields
.field private mAppPreferences:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/settings/vpn2/AppVpnInfo;",
            "Lcom/android/settings/vpn2/AppPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectedLegacyVpn:Lcom/android/internal/net/LegacyVpnInfo;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mConnectivityService:Landroid/net/IConnectivityManager;

.field mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mGearListener:Lcom/android/settings/widget/GearPreference$OnGearClickListener;

.field private mIsUserAddProfilesAllowed:I

.field private final mKeyStore:Landroid/security/KeyStore;

.field private mLegacyVpnPreferences:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/settings/vpn2/LegacyVpnPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mUnavailable:Z

.field private mUpdater:Landroid/os/Handler;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private mUpdaterThread:Landroid/os/HandlerThread;

.field private mUserManager:Landroid/os/UserManager;

.field private vpnSettings:Lcom/android/settings/vpn2/VpnSettings;


# direct methods
.method static synthetic -get0(Lcom/android/settings/vpn2/VpnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/vpn2/VpnSettings;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mIsUserAddProfilesAllowed:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/settings/vpn2/VpnSettings;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mLegacyVpnPreferences:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/settings/vpn2/VpnSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mUnavailable:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/settings/vpn2/VpnSettings;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mUpdater:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/settings/vpn2/VpnSettings;)Lcom/android/settings/vpn2/VpnSettings;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->vpnSettings:Lcom/android/settings/vpn2/VpnSettings;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/settings/vpn2/VpnSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/vpn2/VpnSettings;->mUnavailable:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/settings/vpn2/VpnSettings;)Landroid/content/Context;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/settings/vpn2/VpnSettings;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->isUiRestrictedByOnlyAdmin()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/settings/vpn2/VpnSettings;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->isUiRestricted()Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    sput-object v0, Lcom/android/settings/vpn2/VpnSettings;->VPN_REQUEST:Landroid/net/NetworkRequest;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string/jumbo v0, "no_config_vpn"

    invoke-direct {p0, v0}, Lcom/android/settings/RestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "connectivity"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mConnectivityService:Landroid/net/IConnectivityManager;

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mKeyStore:Landroid/security/KeyStore;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mLegacyVpnPreferences:Ljava/util/Map;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mAppPreferences:Ljava/util/Map;

    new-instance v0, Lcom/android/settings/vpn2/VpnSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/vpn2/VpnSettings$1;-><init>(Lcom/android/settings/vpn2/VpnSettings;)V

    iput-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mGearListener:Lcom/android/settings/widget/GearPreference$OnGearClickListener;

    new-instance v0, Lcom/android/settings/vpn2/VpnSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/vpn2/VpnSettings$2;-><init>(Lcom/android/settings/vpn2/VpnSettings;)V

    iput-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    new-instance v0, Lcom/android/settings/vpn2/VpnSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/vpn2/VpnSettings$3;-><init>(Lcom/android/settings/vpn2/VpnSettings;)V

    iput-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    return-void
.end method

.method private getAlwaysOnAppVpnInfos()Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/android/settings/vpn2/AppVpnInfo;",
            ">;"
        }
    .end annotation

    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    iget-object v5, p0, Lcom/android/settings/vpn2/VpnSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v5}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    iget-object v5, p0, Lcom/android/settings/vpn2/VpnSettings;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v5, v3}, Landroid/net/ConnectivityManager;->getAlwaysOnVpnPackageForUser(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v5, Lcom/android/settings/vpn2/AppVpnInfo;

    invoke-direct {v5, v3, v0}, Lcom/android/settings/vpn2/AppVpnInfo;-><init>(ILjava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v4
.end method

.method private getConnectedAppVpns()Ljava/util/Set;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/android/settings/vpn2/AppVpnInfo;",
            ">;"
        }
    .end annotation

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    :try_start_0
    iget-object v5, p0, Lcom/android/settings/vpn2/VpnSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v5}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    iget-object v5, p0, Lcom/android/settings/vpn2/VpnSettings;->mConnectivityService:Landroid/net/IConnectivityManager;

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    invoke-interface {v5, v6}, Landroid/net/IConnectivityManager;->getVpnConfig(I)Lcom/android/internal/net/VpnConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v5, v0, Lcom/android/internal/net/VpnConfig;->legacy:Z

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_0

    new-instance v5, Lcom/android/settings/vpn2/AppVpnInfo;

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    iget-object v7, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Lcom/android/settings/vpn2/AppVpnInfo;-><init>(ILjava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string/jumbo v5, "VpnSettings"

    const-string/jumbo v6, "Failure updating VPN list with connected app VPNs"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return-object v1
.end method

.method private getConnectedLegacyVpns()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/net/LegacyVpnInfo;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/vpn2/VpnSettings;->mConnectivityService:Landroid/net/IConnectivityManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/net/IConnectivityManager;->getLegacyVpnInfo(I)Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/vpn2/VpnSettings;->mConnectedLegacyVpn:Lcom/android/internal/net/LegacyVpnInfo;

    iget-object v1, p0, Lcom/android/settings/vpn2/VpnSettings;->mConnectedLegacyVpn:Lcom/android/internal/net/LegacyVpnInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/vpn2/VpnSettings;->mConnectedLegacyVpn:Lcom/android/internal/net/LegacyVpnInfo;

    iget-object v1, v1, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/vpn2/VpnSettings;->mConnectedLegacyVpn:Lcom/android/internal/net/LegacyVpnInfo;

    invoke-static {v1, v2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "VpnSettings"

    const-string/jumbo v2, "Failure updating VPN list with connected legacy VPNs"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    return-object v1
.end method

.method static getVpnApps(Landroid/content/Context;Z)Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/vpn2/AppVpnInfo;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v10

    if-nez p0, :cond_0

    const-string/jumbo v12, "VpnSettings"

    const-string/jumbo v13, "context null exit!"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v10}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v10

    :cond_0
    if-eqz p1, :cond_1

    new-instance v9, Landroid/util/ArraySet;

    invoke-direct {v9}, Landroid/util/ArraySet;-><init>()V

    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v12

    invoke-virtual {v12}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/UserHandle;

    invoke-virtual {v7}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v9, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v12}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v9

    :cond_2
    const-string/jumbo v12, "appops"

    invoke-virtual {p0, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    const/4 v12, 0x1

    new-array v12, v12, [I

    const/16 v13, 0x2f

    const/4 v14, 0x0

    aput v13, v12, v14

    invoke-virtual {v1, v12}, Landroid/app/AppOpsManager;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AppOpsManager$PackageOps;

    invoke-virtual {v5}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v12

    invoke-static {v12}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v9, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    const/4 v0, 0x0

    invoke-virtual {v5}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager$OpEntry;

    invoke-virtual {v3}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v12

    const/16 v13, 0x2f

    if-ne v12, v13, :cond_4

    invoke-virtual {v3}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v12

    if-nez v12, :cond_4

    const/4 v0, 0x1

    goto :goto_2

    :cond_5
    if-eqz v0, :cond_3

    invoke-virtual {v5}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-static {p0, v12}, Lcom/android/settings/vpn2/VpnSettings;->isSecureWifiPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_3

    new-instance v12, Lcom/android/settings/vpn2/AppVpnInfo;

    invoke-virtual {v5}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v11, v13}, Lcom/android/settings/vpn2/AppVpnInfo;-><init>(ILjava/lang/String;)V

    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    invoke-static {v10}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v10
.end method

.method private static isSecureWifiPackage(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v1, "com.samsung.android.fast"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "android"

    const-string/jumbo v2, "com.samsung.android.fast"

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    const-string/jumbo v1, "VpnSettings"

    const-string/jumbo v2, "Secure Wi-Fi signature mismatched"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v3
.end method

.method static varargs loadVpnProfiles(Landroid/security/KeyStore;[I)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/security/KeyStore;",
            "[I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/net/VpnProfile;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    const-string/jumbo v3, "VPN_"

    invoke-virtual {p0, v3}, Landroid/security/KeyStore;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v3, 0x0

    array-length v5, v4

    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v0, v4, v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "VPN_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v6

    invoke-static {v0, v6}, Lcom/android/internal/net/VpnProfile;->decode(Ljava/lang/String;[B)Lcom/android/internal/net/VpnProfile;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v6, v1, Lcom/android/internal/net/VpnProfile;->type:I

    invoke-static {p1, v6}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_0

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method


# virtual methods
.method public BixbySearchVpn(Ljava/lang/String;)V
    .locals 12

    const/4 v10, 0x1

    iget-object v8, p0, Lcom/android/settings/vpn2/VpnSettings;->mKeyStore:Landroid/security/KeyStore;

    const/4 v9, 0x0

    new-array v9, v9, [I

    invoke-static {v8, v9}, Lcom/android/settings/vpn2/VpnSettings;->loadVpnProfiles(Landroid/security/KeyStore;[I)Ljava/util/List;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8, v10}, Lcom/android/settings/vpn2/VpnSettings;->getVpnApps(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object v6

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/net/VpnProfile;

    invoke-virtual {p0, v4, v10}, Lcom/android/settings/vpn2/VpnSettings;->findOrCreatePreference(Lcom/android/internal/net/VpnProfile;Z)Lcom/android/settings/vpn2/LegacyVpnPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/vpn2/LegacyVpnPreference;->getProfile()Lcom/android/internal/net/VpnProfile;

    move-result-object v8

    iget-object v8, v8, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v2}, Lcom/android/settings/vpn2/LegacyVpnPreference;->getProfile()Lcom/android/internal/net/VpnProfile;

    move-result-object v8

    invoke-static {p0, v8, v10, v10}, Lcom/android/settings/vpn2/ConfigDialogFragment;->show(Lcom/android/settings/vpn2/VpnSettings;Lcom/android/internal/net/VpnProfile;ZZ)V

    iget-object v8, p0, Lcom/android/settings/vpn2/VpnSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v9, "VPNName"

    const-string/jumbo v10, "Exist"

    const-string/jumbo v11, "yes"

    invoke-virtual {v8, v9, v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/settings/vpn2/VpnSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v9, "EditVPNnetwork"

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/settings/vpn2/VpnSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v9, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_1
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/vpn2/AppVpnInfo;

    invoke-virtual {p0, v0}, Lcom/android/settings/vpn2/VpnSettings;->findOrCreatePreference(Lcom/android/settings/vpn2/AppVpnInfo;)Lcom/android/settings/vpn2/AppPreference;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/vpn2/AppPreference;->getLabel()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getMetricsCategory()I

    move-result v9

    invoke-static {v8, v3, v9}, Lcom/android/settings/vpn2/AppManagementFragment;->show(Landroid/content/Context;Lcom/android/settings/vpn2/AppPreference;I)V

    iget-object v8, p0, Lcom/android/settings/vpn2/VpnSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v9, "VPNName"

    const-string/jumbo v10, "Exist"

    const-string/jumbo v11, "yes"

    invoke-virtual {v8, v9, v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/settings/vpn2/VpnSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v9, "EditVPNnetwork"

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/settings/vpn2/VpnSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v9, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_3
    iget-object v8, p0, Lcom/android/settings/vpn2/VpnSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v9, "VPNName"

    const-string/jumbo v10, "Exist"

    const-string/jumbo v11, "no"

    invoke-virtual {v8, v9, v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/settings/vpn2/VpnSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v9, "EditVPNnetwork"

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/settings/vpn2/VpnSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v9, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void
.end method

.method public canAddPreferences()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->isAdded()Z

    move-result v0

    return v0
.end method

.method public findOrCreatePreference(Lcom/android/settings/vpn2/AppVpnInfo;)Lcom/android/settings/vpn2/AppPreference;
    .locals 4

    iget-object v1, p0, Lcom/android/settings/vpn2/VpnSettings;->mAppPreferences:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/vpn2/AppPreference;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/settings/vpn2/AppPreference;

    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p1, Lcom/android/settings/vpn2/AppVpnInfo;->userId:I

    iget-object v3, p1, Lcom/android/settings/vpn2/AppVpnInfo;->packageName:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/vpn2/AppPreference;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/vpn2/VpnSettings;->mGearListener:Lcom/android/settings/widget/GearPreference$OnGearClickListener;

    invoke-virtual {v0, v1}, Lcom/android/settings/vpn2/AppPreference;->setOnGearClickListener(Lcom/android/settings/widget/GearPreference$OnGearClickListener;)V

    invoke-virtual {v0, p0}, Lcom/android/settings/vpn2/AppPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    iget-object v1, p0, Lcom/android/settings/vpn2/VpnSettings;->mAppPreferences:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public findOrCreatePreference(Lcom/android/internal/net/VpnProfile;Z)Lcom/android/settings/vpn2/LegacyVpnPreference;
    .locals 4

    iget-object v2, p0, Lcom/android/settings/vpn2/VpnSettings;->mLegacyVpnPreferences:Ljava/util/Map;

    iget-object v3, p1, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/vpn2/LegacyVpnPreference;

    const/4 v0, 0x0

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/settings/vpn2/LegacyVpnPreference;

    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/vpn2/LegacyVpnPreference;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/settings/vpn2/VpnSettings;->mGearListener:Lcom/android/settings/widget/GearPreference$OnGearClickListener;

    invoke-virtual {v1, v2}, Lcom/android/settings/vpn2/LegacyVpnPreference;->setOnGearClickListener(Lcom/android/settings/widget/GearPreference$OnGearClickListener;)V

    invoke-virtual {v1, p0}, Lcom/android/settings/vpn2/LegacyVpnPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    iget-object v2, p0, Lcom/android/settings/vpn2/VpnSettings;->mLegacyVpnPreferences:Ljava/util/Map;

    iget-object v3, p1, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    :cond_0
    if-nez v0, :cond_1

    if-eqz p2, :cond_2

    :cond_1
    invoke-virtual {v1, p1}, Lcom/android/settings/vpn2/LegacyVpnPreference;->setProfile(Lcom/android/internal/net/VpnProfile;)V

    :cond_2
    return-object v1
.end method

.method protected getHelpResource()I
    .locals 1

    const v0, 0x7f120cff

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x64

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 13

    const/4 v9, 0x0

    const/4 v12, 0x1

    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return v12

    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v8, p0, Lcom/android/settings/vpn2/VpnSettings;->mKeyStore:Landroid/security/KeyStore;

    new-array v9, v9, [I

    invoke-static {v8, v9}, Lcom/android/settings/vpn2/VpnSettings;->loadVpnProfiles(Landroid/security/KeyStore;[I)Ljava/util/List;

    move-result-object v7

    invoke-static {v4, v12}, Lcom/android/settings/vpn2/VpnSettings;->getVpnApps(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object v6

    if-nez v6, :cond_1

    const-string/jumbo v8, "VpnSettings"

    const-string/jumbo v9, "context null exit!"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v12

    :cond_1
    invoke-direct {p0}, Lcom/android/settings/vpn2/VpnSettings;->getConnectedLegacyVpns()Ljava/util/Map;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/settings/vpn2/VpnSettings;->getConnectedAppVpns()Ljava/util/Set;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/settings/vpn2/VpnSettings;->getAlwaysOnAppVpnInfos()Ljava/util/Set;

    move-result-object v1

    invoke-static {}, Lcom/android/settings/vpn2/VpnUtils;->getLockdownVpn()Ljava/lang/String;

    move-result-object v5

    new-instance v8, Lcom/android/settings/vpn2/VpnSettings$UpdatePreferences;

    invoke-direct {v8, p0}, Lcom/android/settings/vpn2/VpnSettings$UpdatePreferences;-><init>(Lcom/android/settings/vpn2/VpnSettings;)V

    invoke-virtual {v8, v7, v3, v5}, Lcom/android/settings/vpn2/VpnSettings$UpdatePreferences;->legacyVpns(Ljava/util/List;Ljava/util/Map;Ljava/lang/String;)Lcom/android/settings/vpn2/VpnSettings$UpdatePreferences;

    move-result-object v8

    invoke-virtual {v8, v6, v2, v1}, Lcom/android/settings/vpn2/VpnSettings$UpdatePreferences;->appVpns(Ljava/util/List;Ljava/util/Set;Ljava/util/Set;)Lcom/android/settings/vpn2/VpnSettings$UpdatePreferences;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    monitor-enter p0

    :try_start_0
    iget-object v8, p0, Lcom/android/settings/vpn2/VpnSettings;->mUpdater:Landroid/os/Handler;

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/settings/vpn2/VpnSettings;->mUpdater:Landroid/os/Handler;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v8, p0, Lcom/android/settings/vpn2/VpnSettings;->mUpdater:Landroid/os/Handler;

    const-wide/16 v10, 0x3e8

    const/4 v9, 0x0

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return v12

    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onActivityCreated(Landroid/os/Bundle;)V

    new-instance v0, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    iput-object p0, p0, Lcom/android/settings/vpn2/VpnSettings;->vpnSettings:Lcom/android/settings/vpn2/VpnSettings;

    const-string/jumbo v0, "user"

    invoke-virtual {p0, v0}, Lcom/android/settings/vpn2/VpnSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/android/settings/vpn2/VpnSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->isUiRestricted()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mUnavailable:Z

    iget-boolean v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mUnavailable:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/vpn2/VpnSettings;->setHasOptionsMenu(Z)V

    const v0, 0x7f150131

    invoke-virtual {p0, v0}, Lcom/android/settings/vpn2/VpnSettings;->addPreferencesFromResource(I)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/android/settings/RestrictedSettingsFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const v0, 0x7f0e000d

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    return v3

    :pswitch_0
    iget v3, p0, Lcom/android/settings/vpn2/VpnSettings;->mIsUserAddProfilesAllowed:I

    if-nez v3, :cond_0

    return v6

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :goto_0
    iget-object v3, p0, Lcom/android/settings/vpn2/VpnSettings;->mLegacyVpnPreferences:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/android/internal/net/VpnProfile;

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/net/VpnProfile;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v2, v7, v6}, Lcom/android/settings/vpn2/ConfigDialogFragment;->show(Lcom/android/settings/vpn2/VpnSettings;Lcom/android/internal/net/VpnProfile;ZZ)V

    return v7

    :pswitch_data_0
    .packed-switch 0x7f0a0946
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mUnavailable:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onPause()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/settings/vpn2/VpnSettings;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mUpdater:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mUpdater:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mUpdaterThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mUpdaterThread:Landroid/os/HandlerThread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onPause()V

    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "VPN"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 14

    instance-of v11, p1, Lcom/android/settings/vpn2/LegacyVpnPreference;

    if-eqz v11, :cond_1

    move-object v7, p1

    check-cast v7, Lcom/android/settings/vpn2/LegacyVpnPreference;

    invoke-virtual {v7}, Lcom/android/settings/vpn2/LegacyVpnPreference;->getProfile()Lcom/android/internal/net/VpnProfile;

    move-result-object v8

    iget-object v11, p0, Lcom/android/settings/vpn2/VpnSettings;->mConnectedLegacyVpn:Lcom/android/internal/net/LegacyVpnInfo;

    if-eqz v11, :cond_0

    iget-object v11, v8, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    iget-object v12, p0, Lcom/android/settings/vpn2/VpnSettings;->mConnectedLegacyVpn:Lcom/android/internal/net/LegacyVpnInfo;

    iget-object v12, v12, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/android/settings/vpn2/VpnSettings;->mConnectedLegacyVpn:Lcom/android/internal/net/LegacyVpnInfo;

    iget v11, v11, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    const/4 v12, 0x3

    if-ne v11, v12, :cond_0

    :try_start_0
    iget-object v11, p0, Lcom/android/settings/vpn2/VpnSettings;->mConnectedLegacyVpn:Lcom/android/internal/net/LegacyVpnInfo;

    iget-object v11, v11, Lcom/android/internal/net/LegacyVpnInfo;->intent:Landroid/app/PendingIntent;

    invoke-virtual {v11}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v11, 0x1

    return v11

    :catch_0
    move-exception v2

    const-string/jumbo v11, "VpnSettings"

    const-string/jumbo v12, "Starting config intent failed"

    invoke-static {v11, v12, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-static {p0, v8, v11, v12}, Lcom/android/settings/vpn2/ConfigDialogFragment;->show(Lcom/android/settings/vpn2/VpnSettings;Lcom/android/internal/net/VpnProfile;ZZ)V

    const/4 v11, 0x1

    return v11

    :cond_1
    instance-of v11, p1, Lcom/android/settings/vpn2/AppPreference;

    if-eqz v11, :cond_4

    move-object v6, p1

    check-cast v6, Lcom/android/settings/vpn2/AppPreference;

    invoke-virtual {v6}, Lcom/android/settings/vpn2/AppPreference;->getState()I

    move-result v11

    const/4 v12, 0x3

    if-ne v11, v12, :cond_2

    const/4 v1, 0x1

    :goto_0
    if-nez v1, :cond_3

    :try_start_1
    invoke-virtual {v6}, Lcom/android/settings/vpn2/AppPreference;->getUserId()I

    move-result v11

    invoke-static {v11}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13, v9}, Landroid/app/Activity;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v6}, Lcom/android/settings/vpn2/AppPreference;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v10, v0, v9}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v11, 0x1

    return v11

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :catch_1
    move-exception v3

    const-string/jumbo v11, "VpnSettings"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "VPN provider does not exist: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v6}, Lcom/android/settings/vpn2/AppPreference;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    invoke-virtual {v6}, Lcom/android/settings/vpn2/AppPreference;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v4

    invoke-virtual {v6}, Lcom/android/settings/vpn2/AppPreference;->getLabel()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-static {p0, v4, v11, v12, v1}, Lcom/android/settings/vpn2/AppDialogFragment;->show(Landroid/app/Fragment;Landroid/content/pm/PackageInfo;Ljava/lang/String;ZZ)V

    const/4 v11, 0x1

    return v11

    :cond_4
    const/4 v11, 0x0

    return v11
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->isUiRestrictedByOnlyAdmin()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v3

    invoke-interface {p1, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getRestrictionEnforcedAdmin()Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/android/settingslib/RestrictedLockUtils;->setMenuItemAsDisabledByAdmin(Landroid/content/Context;Landroid/view/MenuItem;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-boolean v3, p0, Lcom/android/settings/vpn2/VpnSettings;->mUnavailable:Z

    xor-int/lit8 v0, v3, 0x1

    invoke-interface {p1, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/vpn2/VpnSettings;->mIsUserAddProfilesAllowed:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    const v4, 0x7f0a0946

    if-ne v3, v4, :cond_1

    if-eqz v0, :cond_2

    iget v3, p0, Lcom/android/settings/vpn2/VpnSettings;->mIsUserAddProfilesAllowed:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    const/4 v0, 0x1

    :cond_1
    :goto_2
    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    return-void
.end method

.method public onResume()V
    .locals 6

    const/4 v5, 0x0

    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onResume()V

    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/String;

    const-string/jumbo v2, "false"

    aput-object v2, v1, v5

    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "content://com.sec.knox.provider2/vpnPolicy"

    const-string/jumbo v4, "isUserAddProfilesAllowed"

    invoke-static {v2, v3, v4, v1}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/settings/vpn2/VpnSettings;->mIsUserAddProfilesAllowed:I

    iget-object v2, p0, Lcom/android/settings/vpn2/VpnSettings;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo v3, "no_config_vpn"

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/vpn2/VpnSettings;->mUnavailable:Z

    iget-boolean v2, p0, Lcom/android/settings/vpn2/VpnSettings;->mUnavailable:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->isUiRestrictedByOnlyAdmin()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getEmptyTextView()Landroid/widget/TextView;

    move-result-object v2

    const v3, 0x7f121dda

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getEmptyTextView()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings/vpn2/VpnSettings;->setEmptyView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getEmptyTextView()Landroid/widget/TextView;

    move-result-object v2

    const v3, 0x7f121dc8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, p0, Lcom/android/settings/vpn2/VpnSettings;->mConnectivityManager:Landroid/net/ConnectivityManager;

    sget-object v3, Lcom/android/settings/vpn2/VpnSettings;->VPN_REQUEST:Landroid/net/NetworkRequest;

    iget-object v4, p0, Lcom/android/settings/vpn2/VpnSettings;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v2, v3, v4}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    new-instance v2, Landroid/os/HandlerThread;

    const-string/jumbo v3, "Refresh VPN list in background"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/settings/vpn2/VpnSettings;->mUpdaterThread:Landroid/os/HandlerThread;

    iget-object v2, p0, Lcom/android/settings/vpn2/VpnSettings;->mUpdaterThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    new-instance v2, Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/settings/vpn2/VpnSettings;->mUpdaterThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v2, p0, Lcom/android/settings/vpn2/VpnSettings;->mUpdater:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/settings/vpn2/VpnSettings;->mUpdater:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->invalidateOptionsMenu()V

    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "content://com.sec.knox.provider/RestrictionPolicy4"

    const-string/jumbo v4, "isVpnAllowed"

    invoke-static {v2, v3, v4}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->finishFragment()V

    :cond_2
    iget-object v2, p0, Lcom/android/settings/vpn2/VpnSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/vpn2/VpnSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v5, "VPN"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    return-void
.end method

.method public setShownPreferences(Ljava/util/Collection;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Landroid/support/v7/preference/Preference;",
            ">;)V"
        }
    .end annotation

    iget-object v5, p0, Lcom/android/settings/vpn2/VpnSettings;->mLegacyVpnPreferences:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/util/Collection;->retainAll(Ljava/util/Collection;)Z

    iget-object v5, p0, Lcom/android/settings/vpn2/VpnSettings;->mAppPreferences:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/util/Collection;->retainAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v7/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {v4, v0}, Landroid/support/v7/preference/PreferenceGroup;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {p1, v1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v4, v1}, Landroid/support/v7/preference/PreferenceGroup;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/preference/Preference;

    invoke-virtual {v4, v2}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_2

    :cond_2
    return-void
.end method

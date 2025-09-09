import 'package:wrapcast/core/constants/assets.dart';
import 'package:wrapcast/core/dummy_data/dummy_model.dart';

List<Cast> dummyCasts = [
  Cast(
    profileImage: TAppAssets.user1,
    userName: 'marwan',
    castedFrom: 'farcaster',
    castImage: '',
    casterAt: 1,
    castText: 'announcement: launching All-In tequila',
    castInfo: CastInfo(comments: 6, recasts: 2, likes: 10),
  ),
  Cast(
    profileImage: TAppAssets.user1,
    userName: 'wake',
    castedFrom: 'farcaster',
    castImage: '',
    casterAt: 5,
    castText: 'Will there be milk? 🥛',
    castInfo: CastInfo(comments: 3, recasts: 1, likes: 12),
  ),
  Cast(
    profileImage: TAppAssets.user1,
    userName: 'ted (not lasso)',
    castedFrom: 'farcaster',
    castImage: '',
    casterAt: 1,
    castText: 'excited to share my latest project 🚀',
    castInfo: CastInfo(comments: 4, recasts: 3, likes: 18),
    recastedBy: 'alice',
  ),
  Cast(
    profileImage: TAppAssets.user1,
    userName: 'ted (not lasso)',
    castedFrom: 'farcaster',
    castImage: '',
    casterAt: 1,
    castText: 'excited to share my latest project 🚀',
    castInfo: CastInfo(comments: 4, recasts: 3, likes: 18),
    recastedBy: 'alice',
  ),
  Cast(
    profileImage: TAppAssets.user1,
    userName: 'ted (not lasso)',
    castedFrom: 'farcaster',
    castImage: TAppAssets.castImage,
    casterAt: 1,
    castText: 'excited to share my latest project 🚀',
    castInfo: CastInfo(comments: 4, recasts: 3, likes: 18),
    recastedBy: 'alice',
  ),
];

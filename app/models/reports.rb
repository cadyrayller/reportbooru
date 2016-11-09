module Reports
  def generate_all
    [Approvers, ArtistCommentaries, Artists, BulkUpdateRequests, Comments, ContributorUploads, ForumPosts, ForumTopics, MemberUploads, Pools, PostAppeals, PostChanges, PostFlags, Notes, TagAliases, TagImplications, Taggers, WikiPages].each do |model|
      model.new.generate
    end
  end

  module_function :generate_all
end
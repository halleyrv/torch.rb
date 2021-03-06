module Torch
  module NN
    class L1Loss < Loss
      def initialize(reduction: "mean")
        super(reduction)
      end

      def forward(input, target)
        F.l1_loss(input, target, reduction: @reduction)
      end
    end
  end
end

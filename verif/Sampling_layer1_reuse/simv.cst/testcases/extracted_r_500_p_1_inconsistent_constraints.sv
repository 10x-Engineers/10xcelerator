class c_500_1;
    integer i = -82;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_500_1;
    c_500_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xx1zz1xz1xzzz100xzzzxz01z1x0zz1zxxzxzxxzzxzzzzzzxzzzzzxxxzxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

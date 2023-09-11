class c_3027_1;
    integer i = -503;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3027_1;
    c_3027_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx1010xx001xx11000110x1xxxzx11z1zzxxxzxxxzzzxzzzxxzxzxzzxzzxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

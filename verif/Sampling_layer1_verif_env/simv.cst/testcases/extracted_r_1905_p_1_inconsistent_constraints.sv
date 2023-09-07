class c_1905_1;
    integer i = -316;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1905_1;
    c_1905_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1xz01xz010xx000z01010zz1x100z10zzzzzzxxzxzzzzxxzzzzzxxxzxxxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

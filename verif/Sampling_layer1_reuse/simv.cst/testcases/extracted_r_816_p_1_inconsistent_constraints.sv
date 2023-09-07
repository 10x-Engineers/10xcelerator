class c_816_1;
    integer i = -134;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_816_1;
    c_816_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zzxx1zxx1zz1xxxzz1xx01x001xxx10xzzzxzzzzzxzxzzzzzxzxxxxzzxxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

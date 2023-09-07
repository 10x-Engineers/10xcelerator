class c_3019_1;
    integer i = -502;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3019_1;
    c_3019_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10xxx10x1111z111001xx1110xzz0z11zzzxxzzzxzzzzxxxzzzxzxzzxxxxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

class c_430_1;
    integer i = -70;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_430_1;
    c_430_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1z01x101zxz110xx10z111zx101xxx1zxzzzxzxzzxxxzxzzxzxxzzzxxzxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

class c_146_1;
    integer i = -23;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_146_1;
    c_146_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1011z11z10z1000xzz01zz11xzzx1z0xxxzzzzzzzzzxzxxxzzxxxzxzzxxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

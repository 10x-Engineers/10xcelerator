class c_2097_1;
    integer i = -348;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2097_1;
    c_2097_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "011xx1zzx00z1z1x0110zx1xz1z01110xxzxxzxxzzzxxzzzzxzxxxzxzzxxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

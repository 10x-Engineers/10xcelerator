class c_935_1;
    integer i = -154;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_935_1;
    c_935_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz111zx11xx0zz1010x00111zx1z01x1xxzzxzzxxzzzzxxxxzzzzzxzxzzzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

class c_948_1;
    integer i = -156;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_948_1;
    c_948_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11z0x0zx0xx0xx1z1zzzx0110zxxxzx1zxxxxxzzzzxxzxzzxxxxzxzxzxxxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

class c_994_1;
    integer i = -164;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_994_1;
    c_994_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zzx1zxxz1zx1x01xz0000xzzxzx0zx1zxzxzxzzzzzzxxxxzzxxxxzzxzxzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

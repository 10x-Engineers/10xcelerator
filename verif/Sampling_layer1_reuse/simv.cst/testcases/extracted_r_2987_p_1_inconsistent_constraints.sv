class c_2987_1;
    integer i = -496;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2987_1;
    c_2987_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzx0x11xz100z1xz1x1z1z11zzz1xz01xxxzxzzzzxxxxxxzzxzzzxzxzxzxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

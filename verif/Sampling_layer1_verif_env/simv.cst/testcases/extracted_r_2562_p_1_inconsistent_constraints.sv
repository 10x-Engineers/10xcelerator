class c_2562_1;
    integer i = -425;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2562_1;
    c_2562_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z01xzzx0z100zzxxz0xxzx1xz0100x1zxzzzzzzxzxzzzzxxxxxzzzzxxxxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

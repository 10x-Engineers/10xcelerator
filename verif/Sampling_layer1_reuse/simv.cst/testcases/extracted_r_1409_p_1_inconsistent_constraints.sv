class c_1409_1;
    integer i = -233;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1409_1;
    c_1409_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x00zx00z0xzx1zz1xz10xzzxzxzzz0z0zzxxxxzxzzxzzzzzxzzxzxzxxxxxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

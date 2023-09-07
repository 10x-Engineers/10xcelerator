class c_1996_1;
    integer i = -331;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1996_1;
    c_1996_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zx0xz010x1z10xz1xx0zxxx1x01x00xxzzxzxzxzxzxxxxxxxzzxzxxxzzzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

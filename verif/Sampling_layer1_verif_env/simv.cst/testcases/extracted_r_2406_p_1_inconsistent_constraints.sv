class c_2406_1;
    integer i = -399;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2406_1;
    c_2406_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x0z1zz1111zx0zxz1xx1zxz0xxzzz0zzxxxxxxxxxzzxzxzxzxxxzzzzxzzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

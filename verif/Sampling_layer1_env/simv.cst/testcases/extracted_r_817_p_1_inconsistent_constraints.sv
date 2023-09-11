class c_817_1;
    integer i = -135;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_817_1;
    c_817_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10x1zz00zz01zxxx1xx0z1xz0011110zzxzzxzzzxzzxxzxzzzxxzxxxxzzzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

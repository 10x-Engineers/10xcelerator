class c_2959_1;
    integer i = -492;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2959_1;
    c_2959_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x000100111x0x1zz1zxz1xx1xz0z1001zzxxzxzzzzzxzxzzzzzzzxxzzzzxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

class c_3353_1;
    integer i = -557;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3353_1;
    c_3353_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xxxx01xx1x1xx0z10zxz1zz0xz111zzzxxzzzxzxzxxxxzxxxzxxxzxzxzzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

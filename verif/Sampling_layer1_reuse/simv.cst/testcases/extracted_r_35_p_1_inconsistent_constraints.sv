class c_35_1;
    integer i = -4;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_35_1;
    c_35_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z0xz1xx1101z010z0z1x1z01z0zxz0zxxzzzzxxzxzzxxxxzxxxzzzzzxzxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

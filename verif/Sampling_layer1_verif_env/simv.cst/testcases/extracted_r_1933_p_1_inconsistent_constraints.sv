class c_1933_1;
    integer i = -321;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1933_1;
    c_1933_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1011x1x1z0xxz0zx11z0z011000z1z1zxzxzxxzxzzxxzzzzzzzxxzxxzzxxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

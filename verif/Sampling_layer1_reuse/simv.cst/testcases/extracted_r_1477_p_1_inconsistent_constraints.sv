class c_1477_1;
    integer i = -245;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1477_1;
    c_1477_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz1xz1z1xxzz101x1x0zxx00zx000zxxxxzxzxxzxzxzxzzzzxxxxzxxxzzzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

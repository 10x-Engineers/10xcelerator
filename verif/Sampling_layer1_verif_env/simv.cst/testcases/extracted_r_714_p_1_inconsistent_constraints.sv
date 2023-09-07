class c_714_1;
    integer i = -117;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_714_1;
    c_714_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x1zx0zxx101xz0z10xz01xx0z0011x1zxxzxzxzxzxxzzxxxxzxxxzzxxzxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

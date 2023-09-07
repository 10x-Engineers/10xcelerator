class c_172_1;
    integer i = -27;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_172_1;
    c_172_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11zz1xzxzxzx101zx11zx11xz101011zxxzxxzxxxzxxxxzxxxxxxzzxxxzzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

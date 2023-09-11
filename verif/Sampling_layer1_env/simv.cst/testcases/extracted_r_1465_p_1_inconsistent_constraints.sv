class c_1465_1;
    integer i = -243;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1465_1;
    c_1465_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z111z01xz011x111x11zx1xzxxzx1100xxzzxxxzxxzxzzzxzxxzxxzxxxzzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

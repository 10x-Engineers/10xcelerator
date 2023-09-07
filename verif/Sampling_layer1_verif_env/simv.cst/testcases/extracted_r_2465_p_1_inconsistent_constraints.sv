class c_2465_1;
    integer i = -409;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2465_1;
    c_2465_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zxx00110xz10xxxz0xxxxxxz11z1xx0zxxxxxxzzxxzxxxxxxxzxxzxxzzzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
